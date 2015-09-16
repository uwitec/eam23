create or replace function account_type(opertionkey in varchar2) return
 varchar2  is Result varchar2(200);
 --将ERP中的费用种类转化成EAM系统的种类
begin
  if (opertionkey = '代理费支出') then
     Result := '代理费支出';
     elsif (opertionkey = '宣传费') then
    Result := '宣传费';
     elsif (opertionkey = '外事费') then
    Result := '外事费';
     elsif (opertionkey = '营销费--差旅费' or opertionkey = '营销费--低值易耗品' or  opertionkey ='营销费--会议费'
      or opertionkey ='营销费--书报资料费' or opertionkey ='营销费--宣传费' or opertionkey ='营销费--印刷费'
      or opertionkey ='营销费--邮电费' or opertionkey ='营销费--招待费' or opertionkey ='营销费-差旅费'
      or opertionkey ='营销费-低值易耗品' or opertionkey ='营销费-公杂费' or opertionkey ='营销费-会议费'
      or opertionkey ='营销费-其它业务费' or opertionkey ='营销费-书报资料费' or opertionkey ='营销费-邮电费'
      or opertionkey ='营销费-招待费') then
    Result := '营销费';
     elsif (opertionkey = '代理车辆第三方强制险' or opertionkey = '财产保险费' or opertionkey = '代理财产保险费') then
    Result := '财产保险费';
     elsif (opertionkey = '邮电费') then
    Result := '邮电费';
     elsif (opertionkey = '印刷费') then
    Result := '印刷费';
     elsif (opertionkey = '差旅费') then
    Result := '差旅费';
     elsif (opertionkey = '会议费') then
    Result := '会议费';
     elsif (opertionkey = '书报资料费') then
    Result := '书报资料费';
     elsif (opertionkey = '代理补缴养路费' or opertionkey = '代理车辆年检费'
     or opertionkey = '代理养路费' or opertionkey = '业务用车费') then
    Result := '业务用车费';
     elsif (opertionkey = '代理修理费' or opertionkey = '修理费') then
    Result := '修理费';
     elsif (opertionkey = '评估费') then
    Result := '评估费';
     elsif (opertionkey = '咨询费') then
    Result := '咨询费';
     elsif (opertionkey = '尽职调查费') then
    Result := '尽职调查费';
     elsif (opertionkey = '代理律师费' or opertionkey = '律师费') then
    Result := '律师费';
    elsif (opertionkey = '代理诉讼费' or opertionkey = '诉讼费') then
    Result := '诉讼费';
     elsif (opertionkey = '公证费') then
    Result := '公证费';
     elsif (opertionkey = '审计费') then
    Result := '审计费';
     elsif (opertionkey = '拍卖费') then
    Result := '拍卖费';
     elsif (opertionkey = '广告费') then
    Result := '广告费';
     elsif (opertionkey = '水电费') then
    Result := '水电费';
     elsif (opertionkey = '代理物业管理费' or opertionkey = '物业费') then
    Result := '物业费';
     elsif (opertionkey = '绿化费') then
    Result := '绿化费';
     elsif (opertionkey = '公杂费') then
    Result := '公杂费';
     elsif (opertionkey = '代理车船使用税') then
    Result := '车船使用税';
     elsif (opertionkey = '代理补缴土地使用税' or opertionkey = '代理土地使用税') then
    Result := '土地使用税';
     elsif (opertionkey = '代理房产税' or opertionkey = '代理补缴房产税') then
    Result := '房产税';
     elsif (opertionkey = '代理印花税') then
    Result := '印花税';
     elsif (opertionkey = '网络通信费') then
    Result := '网络通信费';
     elsif (opertionkey = '劳务费') then
    Result := '劳务费';
    elsif (opertionkey = '安全防卫费') then
    Result := '安全防卫费';
     elsif (opertionkey = '代理其他税金') then
    Result := '其他税金';
     elsif (opertionkey = '董事会费') then
    Result := '董事会费';
     elsif (opertionkey = '计算机设备运转费') then
    Result := '计算机设备运转费';
     elsif (opertionkey = '其他电子设备运转费') then
    Result := '其他电子设备运转费';
     elsif (opertionkey = '代理土地租金' or opertionkey = '租赁费') then
    Result := '租赁费';
     elsif (opertionkey = '部门公务交通补贴') then
    Result := '交通补贴';
     elsif (opertionkey = '代理其他业务支出' or opertionkey = '其他业务费') then
    Result := '其他业务费';
     elsif (opertionkey = '其他管理费' or opertionkey = '代理其他审批费用') then
    Result := '其他管理费';
     elsif (opertionkey = '手续费') then
    Result := '手续费支出';
     elsif (opertionkey = '代理计入固定资产原值的其他审批费用') then
    Result := '装修改造';
     elsif (opertionkey = '代理补缴契税' or opertionkey = '代理房地产办证费（税费）'
     or opertionkey = '代理契税' or opertionkey = '固定资产办证支出') then
    Result := '确权费用';
   else
     Result := '';
  end if;
  return(Result);
end account_type;
/
