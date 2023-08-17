import React, { useState, useRef } from "react";
import { useNavigate } from "react-router-dom";
import { api } from "../../services/httpService";
import "../../css/work/WorkCreate.css";
const WorkCreate = ({ userInfo, isLogin }) => {
  const [isAutoAceepted, setIsAutoAceepted] = useState(true);
  const [workImg, setWorkImg] = useState(true);
  const fileInputRef = useRef(null);
  const handleIsAutoAceepted = (e) => {
    const value = e.target.value === "true"; // 문자열 "true"를 불리언 true로 변환
    setIsAutoAceepted(value);
  };
  const handleImageDelete = () => {
    setWorkImg(null);
    if (fileInputRef.current) {
      fileInputRef.current.value = "";
      fileInputRef.current.removeAttribute("required");
    }
  };
  const handleWorkImg = (e) => {
    const file = e.target.files[0];
    if (file) {
      const modifiedFile = new File([file], `${Date.now()}-${file.name}`, {
        type: file.type,
      });
      setWorkImg(modifiedFile);

      if (fileInputRef.current) {
        fileInputRef.current.setAttribute("required", "required");
      }
    } else {
      setWorkImg(null);
      if (fileInputRef.current) {
        fileInputRef.current.removeAttribute("required");
      }
    }
  };

  // axios 인스턴스 생성
  const apiInstance = api();
  // 페이지 이동을 위한 useNavigate를 사용하기 위한 변수 선언
  const navigate = useNavigate();

  // 생성하기 클릭
  const onClickEntCreate = async function (e) {
    e.preventDefault(); // 기본 제출 동작 막기

    const accessToken = sessionStorage.getItem("accessToken");
    // 엔터 프로필 이미지와, entData를 함께 보내기 위한 작업
    const formData = new FormData();
    formData.append("file", workImg);

    const entData = {
      isAutoAccepted: isAutoAceepted,
    };
    formData.append(
      "requestDto",
      new Blob([JSON.stringify(entData)], {
        type: "application/json",
      })
    );

    try {
      const res = await apiInstance.post("/ent", formData, {
        headers: {
          Authorization: `Bearer ${accessToken}`, // Bearer 토큰 포함
          "Content-Type": "multipart/form-data",
          Accept: "application/json", // 추가
        },
      });
      console.log(res);
      if (res.data === false) {
        alert("중복된 엔터명입니다!");
      } else {
        alert("노래합작 생성 완료");
        navigate("/music");
      }
    } catch (error) {
      alert("노래합작 생성 오류");
    }
  };

  return (
    <div>
      <div className="form_wrapper workCreateFormWrapper">
        <div className="form_container">
          <div className="title_container">
            <h2>노래합작 업로드</h2>
          </div>
          <div className="row clearfix">
            <div className="">
              <form className="entCreateForm" onSubmit={onClickEntCreate}>
                <label>노래합작 파일</label>
                <div className="input_field" id="workImgInputField">
                  <div className="file-input">
                    <input
                      type="file"
                      name="file"
                      ref={fileInputRef}
                      onChange={handleWorkImg}
                      accept="audio/*,video/*"
                      style={{ display: "none" }}
                    />
                    <span
                      id="modifybutton"
                      onClick={() => fileInputRef.current.click()}>
                      오디오 변경
                    </span>
                    <span id="deletebutton" onClick={handleImageDelete}>
                      삭제
                    </span>
                  </div>
                </div>
                <input className="button" type="submit" value="생성하기" />
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
//  엔터명 (중복확인) 엔터 공개 설정 (자동가입) / 엔터 소개 / 해시태그 / 엔터로고
export default WorkCreate;