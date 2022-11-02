 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                                <li class="nav-item dropdown no-arrow mx-1"> 
                            <a class="nav-link dropdown-toggle" href="#" id="dropimg" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-picture-o"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter " id="count_img"></span>
                            </a> 
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Daily Report Img
                                </h6>
                                     <a class="dropdown-item d-flex align-items-center" href="">
      
                                    <div class="font-weight-bold show_data_img" >
                                  
                        
                                    </div>
                                </a>

                                <a class="dropdown-item text-center small text-gray-500" href=" ">View Task Process</a>
                            </div>
                        </li>

 <script>
 
$(document).ready(function(){
 
 //updating the view with notifications using ajax

function load_unseen_notification(view = '')
 
{

 $.ajax({
 
   url:"<?php echo base_url();?>user/dashboard/user_notifi_report",
  method:"POST",
  data:{"view":view},
  dataType:"json",
  success:function(data)
 
  {
     
   $('.show_data_img').html(data.notification);
   $('#count_img').show();
   if(data.unseen_notification > 0)
   {
       
    $('#count_img').html(data.unseen_notification);
   }  else if(data.unseen_notification == ''){

       $('#count_img').hide();

   }
 
  }
 
 });
 
}
 
load_unseen_notification();
 
 //submit form and get new records

// load new notifications
 
$(document).on('click', '#dropimg', function(){
 
 $('#count_img').html('');
 
 load_unseen_notification('yes');
 
});
 
setInterval(function(){
 
 load_unseen_notification();;
 
}, 2000);
 
});
 
</script>                                
                                <li class="nav-item dropdown no-arrow mx-1"> 
                            <a class="nav-link dropdown-toggle" href="#" id="droptogg" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter " id="count"></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Task Notif
                                </h6>
                                     <a class="dropdown-item d-flex align-items-center" href="">
      
                                    <div class="font-weight-bold show_data" >
                                  
                        
                                    </div>
                                </a>

                                <a class="dropdown-item text-center small text-gray-500" href=" ">View Task Process</a>
                            </div>
                        </li>

 <script>
 
$(document).ready(function(){
 
 //updating the view with notifications using ajax

function load_unseen_notification(view = '')
 
{

 $.ajax({
 
   url:"<?php echo base_url();?>user/dashboard/user_notifi_admin",
  method:"POST",
  data:{"view":view},
  dataType:"json",
  success:function(data)
 
  {
     
   $('.show_data').html(data.notification);
   $('#count').show();
   if(data.unseen_notification > 0)
   {
       
    $('#count').html(data.unseen_notification);
   }  else if(data.unseen_notification == ''){

       $('#count').hide();

   }
 
  }
 
 });
 
}
 
load_unseen_notification();
 
 //submit form and get new records

// load new notifications
 
$(document).on('click', '#droptog', function(){
 
 $('#count').html('');
 
 load_unseen_notification('yes');
 
});
 
setInterval(function(){
 
 load_unseen_notification();;
 
}, 2000);
 
});
 
</script>

                        <!-- Topbar Navbar reimbursment -->
                        <?php if(!empty ($reimbursment_count)): ?>
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"><?= $reimbursment_count  ?></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Reimbursment
                                </h6>
                                
                                <?php foreach ($reimbursment as $key => $row) : ?>
                                <a class="dropdown-item d-flex align-items-center" href=" <?php echo base_url(); ?>reimburs">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate"><?php echo $row->user_reimbus ?></div>
                                        <div class="small text-gray-500"><?php echo $row->tanggal_reimbus ?></div>
                                    </div>
                                </a><?php  endforeach; ?>

                                <a class="dropdown-item text-center small text-gray-500" href=" <?php echo base_url(); ?>reimburs">Read More Messages</a>
                            </div>
                        </li><?php endif; ?>

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                       <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"><?= $izin_atasan  ?></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Atasan
                                </h6>
                                
                                <?php foreach ($atasan as $key => $izin) : ?>
                                <a class="dropdown-item d-flex align-items-center" href=" <?php echo base_url(); ?>izin">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate"><?php echo $izin->nama_karyawan ?></div>
                                        <div class="small text-gray-500"><?php echo $izin->jenis ?></div>
                                    </div>
                                </a><?php  endforeach; ?>

                                <a class="dropdown-item text-center small text-gray-500" href=" <?php echo base_url(); ?>izin">Read More Messages</a>
                            </div>
                        </li>
                                                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                       <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"><?= $izin_hrd  ?></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    HRD
                                </h6>
                                
                                <?php foreach ($hrd as $key => $izin) : ?>
                                <a class="dropdown-item d-flex align-items-center" href="<?php echo base_url(); ?>izin/hrd">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate"><?php echo $izin->nama_karyawan ?></div>
                                        <div class="small text-gray-500"><?php echo $izin->jenis ?></div>
                                    </div>
                                </a><?php  endforeach; ?>

                                <a class="dropdown-item text-center small text-gray-500" href=" <?php echo base_url(); ?>izin/hrd">Read More Messages</a>
                            </div>
                        </li>
                                               <!-- Nav Item - Alerts
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                           
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
                        </li> -->



                        <div class="topbar-divider d-none d-sm-block"></div>
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $this->session->login['nama'] ?></span>
                             <img class="img-profile rounded-circle"
                                    src="<?php echo base_url(); ?>img/undraw_profile.svg">
                            </a> 
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="<?= base_url('logout') ?>">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>