<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <title>팁</title>
	
	    <!-- Custom fonts for this template -->
	    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	    <link
	        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	        rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
	    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">
	
	    <!-- Custom styles for this page -->
	    <link href="../resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	</head>

	<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
          <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
	
	            <!-- Sidebar - Brand (타이틀 로고)-->
	            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="">
	                <div class="sidebar-brand-icon rotate-n-15">
	                    <i class="fas fa-laugh-wink"></i>
	                </div>
	                <div class="sidebar-brand-text mx-3">로고<sup>2</sup></div>
	            </a>
	
	            <!-- Divider(메뉴 나누는 선) -->
	            <hr class="sidebar-divider my-0">
	
	            <!-- Nav Item - Dashboard(메인 화면) -->
	            <li class="nav-item active">
	                <a class="nav-link" href="#">
	                    <i class="fas fa-fw fa-tachometer-alt"></i>
	                    <span>대쉬보드</span></a>
		            </li>
	
	            <!-- Divider (메뉴 나누는 선)-->
	            <hr class="sidebar-divider">
	
	            <!-- 커뮤니티 탭 -->
	            <li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
	                    aria-expanded="true" aria-controls="collapseTwo">
	                    <i class="fas fa-fw fa-cog"></i>
	                    <span>커뮤니티</span>
	                </a>
	                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header">커뮤니티</h6>
	                        <a class="collapse-item" href="/freeBoard/freeBoardMain">자유 게시판</a>
	                        <a class="collapse-item" href="#">사진 게시판</a>
	                    </div>
	                </div>
	            </li>
	
	            <!-- 정보 탭 -->
	            <li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
	                    aria-expanded="true" aria-controls="collapseUtilities">
	                    <i class="fas fa-fw fa-wrench"></i>
	                    <span>정보</span>
	                </a>
	                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
	                    data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header">정보</h6>
	                       <a class="collapse-item" href="/tip/tipMain">팁</a>
	                        <a class="collapse-item" href="/tip/tipAnimal">동물백과</a>
	                        <a class="collapse-item" href="/tip/tipMap">우리동네 동물병원</a>
	                    </div>
	                </div>
	            </li>
	
	            <!-- Divider (선) -->
	            <hr class="sidebar-divider">
	
	            <!-- Nav Item - Charts(2번째의 1 탭) -->
	            <li class="nav-item">
	                <a class="nav-link" href="#">
	                    <i class="fas fa-fw fa-chart-area"></i>
	                    <span>거래 게시판</span></a>
	            </li>
	
	            <!-- Nav Item - Tables(2번째의 2 탭) -->
	            <li class="nav-item">
	                <a class="nav-link" href="#">
	                    <i class="fas fa-fw fa-table"></i>
	                    <span>넣을거 추천점</span></a>
	            </li>
	
	            <!-- Divider -->
	            <hr class="sidebar-divider d-none d-md-block">
	
	            <!-- Sidebar Toggler (Sidebar) -->
	            <div class="text-center d-none d-md-inline">
	                <button class="rounded-circle border-0" id="sidebarToggle"></button>
	            </div>
	
	            <!-- Sidebar Message -->
	            <div class="sidebar-card d-none d-lg-flex">
	                <img class="sidebar-card-illustration mb-2" src="../resources/img/undraw_rocket.svg" alt="...">
	                <p class="text-center mb-2"><strong>이곳에는</strong>무엇을 할까요?</p>
	                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
	            </div>
	
	        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                         <!-- 로그인 전(로그인, 회원가입) -->
	                        <ul class="navbar-nav"> 
	                        	<li class="nav-item"> 
									<a class="nav-link" href="/member/join">회원가입</a> 
	    						</li> 
	    						<li class="nav-item"> 
									<a class="nav-link" href="#">로그인</a> 
	    						</li> 
	    					</ul> 
	    					
	                        <!-- 로그인 후 보여주는 정보(프로필사진, 아이디) -->
	                        <!--<li class="nav-item dropdown no-arrow">
	                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
	                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
	                                <img class="img-profile rounded-circle"
	                                    src="img/undraw_profile.svg">
	                            </a>
	                            Dropdown - User Information(사용자 정보) 로그아웃 등
	                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
	                                aria-labelledby="userDropdown">
	                                <a class="dropdown-item" href="#">
	                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    Profile
	                                </a>
	                                <a class="dropdown-item" href="#">
	                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    Settings
	                                </a>
	                                <a class="dropdown-item" href="#">
	                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    Activity Log
	                                </a>
	                                <div class="dropdown-divider"></div>
	                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
	                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    Logout
	                                </a>
	                            </div>
	                        </li> -->

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">지도</h1>
                   

                    <!-- 동물병원 지도 부분 --> 
                   <div class="map_wrap">
				    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
				
				    <div id="menu_wrap" class="bg_white">
				        <div class="option">
				            <div>
				                <form onsubmit="searchPlaces(); return false;">
				                    키워드 : <input type="text" value="동물병원" id="keyword" size="15"> 
							    <button type="submit">검색하기</button> 
				                </form>
				            </div>
				        </div>
				        <hr>
				        <ul id="placesList"></ul>
				        <div id="pagination"></div>
				    </div>
				</div>
				<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e1a690e30ac51807a287250e61a51e22&libraries=services"></script>
				<script>
				// 마커를 담을 배열입니다
				var markers = [];
				
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  
				
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
				// 장소 검색 객체를 생성합니다
				var ps = new kakao.maps.services.Places();  
				
				// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({zIndex:1});
				
				// 키워드로 장소를 검색합니다
				searchPlaces();
				
				// 키워드 검색을 요청하는 함수입니다
				function searchPlaces() {
				
				    var keyword = document.getElementById('keyword').value;
				
				    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
				    navigator.geolocation.getCurrentPosition(function(pos) {
									    var latitude = pos.coords.latitude;
									    var longitude = pos.coords.longitude;
									
				    ps.keywordSearch( keyword, placesSearchCB,{
									    location: new kakao.maps.LatLng(latitude, longitude)
									}); 
									});
				}
				
				// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
				function placesSearchCB(data, status, pagination) {
				    if (status === kakao.maps.services.Status.OK) {
				
				        // 정상적으로 검색이 완료됐으면
				        // 검색 목록과 마커를 표출합니다
				        displayPlaces(data);
				
				        // 페이지 번호를 표출합니다
				        displayPagination(pagination);
				
				    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				
				        alert('검색 결과가 존재하지 않습니다.');
				        return;
				
				    } else if (status === kakao.maps.services.Status.ERROR) {
				
				        alert('검색 결과 중 오류가 발생했습니다.');
				        return;
				
				    }
				}
				
				// 검색 결과 목록과 마커를 표출하는 함수입니다
				function displayPlaces(places) {
				
				    var listEl = document.getElementById('placesList'), 
				    menuEl = document.getElementById('menu_wrap'),
				    fragment = document.createDocumentFragment(), 
				    bounds = new kakao.maps.LatLngBounds(), 
				    listStr = '';
				    
				    // 검색 결과 목록에 추가된 항목들을 제거합니다
				    removeAllChildNods(listEl);
				
				    // 지도에 표시되고 있는 마커를 제거합니다
				    removeMarker();
				    
				    for ( var i=0; i<places.length; i++ ) {
				
				        // 마커를 생성하고 지도에 표시합니다
				        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
				            marker = addMarker(placePosition, i), 
				            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
				
				        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				        // LatLngBounds 객체에 좌표를 추가합니다
				        bounds.extend(placePosition);
				
				        // 마커와 검색결과 항목에 mouseover 했을때
				        // 해당 장소에 인포윈도우에 장소명을 표시합니다
				        // mouseout 했을 때는 인포윈도우를 닫습니다
				        (function(marker, title) {
				            kakao.maps.event.addListener(marker, 'mouseover', function() {
				                displayInfowindow(marker, title);
				            });
				
				            kakao.maps.event.addListener(marker, 'mouseout', function() {
				                infowindow.close();
				            });
				
				            itemEl.onmouseover =  function () {
				                displayInfowindow(marker, title);
				            };
				
				            itemEl.onmouseout =  function () {
				                infowindow.close();
				            };
				        })(marker, places[i].place_name);
				
				        fragment.appendChild(itemEl);
				    }
				
				    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
				    listEl.appendChild(fragment);
				    menuEl.scrollTop = 0;
				
				    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				    map.setBounds(bounds);
				}
				
				// 검색결과 항목을 Element로 반환하는 함수입니다
				function getListItem(index, places) {
				
				    var el = document.createElement('li'),
				    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
				                '<div class="info">' +
				                '   <h5>' + places.place_name + '</h5>';
				
				    if (places.road_address_name) {
				        itemStr += '    <span>' + places.road_address_name + '</span>' +
				                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
				    } else {
				        itemStr += '    <span>' +  places.address_name  + '</span>'; 
				    }
				                 
				      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
				                '</div>';           
				
				    el.innerHTML = itemStr;
				    el.className = 'item';
				
				    return el;
				}
				
				// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
				function addMarker(position, idx, title) {
				    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
				        imgOptions =  {
				            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
				        },
				        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
				            marker = new kakao.maps.Marker({
				            position: position, // 마커의 위치
				            image: markerImage 
				        });
				
				    marker.setMap(map); // 지도 위에 마커를 표출합니다
				    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
				
				    return marker;
				}
				
				// 지도 위에 표시되고 있는 마커를 모두 제거합니다
				function removeMarker() {
				    for ( var i = 0; i < markers.length; i++ ) {
				        markers[i].setMap(null);
				    }   
				    markers = [];
				}
				
				// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
				function displayPagination(pagination) {
				    var paginationEl = document.getElementById('pagination'),
				        fragment = document.createDocumentFragment(),
				        i; 
				
				    // 기존에 추가된 페이지번호를 삭제합니다
				    while (paginationEl.hasChildNodes()) {
				        paginationEl.removeChild (paginationEl.lastChild);
				    }
				
				    for (i=1; i<=pagination.last; i++) {
				        var el = document.createElement('a');
				        el.href = "#";
				        el.innerHTML = i;
				
				        if (i===pagination.current) {
				            el.className = 'on';
				        } else {
				            el.onclick = (function(i) {
				                return function() {
				                    pagination.gotoPage(i);
				                }
				            })(i);
				        }
				
				        fragment.appendChild(el);
				    }
				    paginationEl.appendChild(fragment);
				}
				
				// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
				// 인포윈도우에 장소명을 표시합니다
				function displayInfowindow(marker, title) {
				    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
				
				    infowindow.setContent(content);
				    infowindow.open(map, marker);
				}
				
				 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
				function removeAllChildNods(el) {   
				    while (el.hasChildNodes()) {
				        el.removeChild (el.lastChild);
				    }
				}
				</script>
                    
                  </div>

                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>요기도 머쓸까</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/demo/datatables-demo.js"></script>

</body>

</html>