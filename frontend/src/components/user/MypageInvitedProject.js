import React, { useEffect, useState } from "react";
import "../../css/user/MyEntList.css";
import { api } from "../../services/httpService";
import { useNavigate } from "react-router-dom";
const MypageInvitedProject = ({ userInfo, myEntList }) => {
	// useState
	const [invitedProjectList, setInvitedProjectList] = useState([{}]);
	const [isLoading, setIsLoading] = useState(true); // 로딩 상태
	// axios 인스턴스 생성
	const apiInstance = api();
	// 페이지 이동을 위한 navigate 생성
	const navigate = useNavigate();
	// useEffect
	useEffect(() => {
		getInvitedProject();
	}, []);
	// 내가 받은 프로젝트 초대 목록 가져오기
	const getInvitedProject = async () => {
		const accessToken = sessionStorage.getItem("accessToken");
		try {
			const res = await apiInstance.get(`/project/invitedList/${userInfo.userId}`, {
				headers: {
					Authorization: `Bearer ${accessToken}`, // Bearer 토큰 포함
				},
			});
			console.log(res.data);
			setInvitedProjectList(res.data);
			setIsLoading(false); // 로딩 상태 변경
		} catch {
			alert("프로젝트 목록 가져오기 오류");
			setIsLoading(false); // 에러 발생 시에도 로딩 상태 변경
		}
	};
	// 수락 버튼 누르기
	const onClickAccept = async (isAccept, projectId, createdAt) => {
		const accessToken = sessionStorage.getItem("accessToken");
		console.log(`isAccept: ${isAccept}, projectId: ${projectId}, createdAt:${createdAt}`);
		const res = await apiInstance.put(
			"project/member/joinProject",
			{
				createdAt: createdAt,
				userId: userInfo.userId,
				projectId: projectId,
				isAccept: isAccept,
			},
			{
				headers: {
					Authorization: `Bearer ${accessToken}`, // Bearer 토큰 포함
				},
			}
		);
	};

	console.log(userInfo);
	return (
		<div className="myEntListContainer">
			<div className="myEntListWrap">
				<h1>초대 받은 프로젝트</h1>
				{/* 초대장 불러오기 */}
				{isLoading ? (
					<div></div>
				) : (
					invitedProjectList
						.filter((project) => project.isAccept !== null)
						.map((project) => (
							<div className="myEntListItemContainer">
								<li className="myEntListItem" key={project.entId}>
									<div className="myEntListItemTitleWrap">
										<h3 className="myEntListItemTitle">엔터 이름 : {project.entName}</h3>
										<h3 className="myEntListItemTitle">프로젝트 이름 : {project.projectName}</h3>
										<button
											onClick={() => {
												onClickAccept(true, project.projectId, project.createdAt);
											}}
										>
											수락
										</button>
										<button
											onClick={() => {
												onClickAccept(false, project.projectId, project.createdAt);
											}}
										>
											거절
										</button>
									</div>
								</li>
							</div>
						))
				)}
			</div>
		</div>
	);
};

export default MypageInvitedProject;
