//Lega_Lottery Config.
Lega_SingleCurrency = True;
Lega_Cost_Toolbelt = True;
Lega_Cost_Item = False;
Lega_Item = "ItemBriefcase_Base";
Lega_Tool = "EvMoney";
Lega_MaxCash/*Max Payout*/= "10000";


Lega_Prize_Vehicles = ["HMmWV_M2","HMMWV_M2_USArmy","HMMWV_Mk19","HMMWV","HMMWV_Ambulance","HMMWV_Armoured"];
Lega_Prize_Guns = [["M14_EP1","SVD_CAMO","SVD","VSS_Vintorez","DMR_DZ","M40A3","M24","M24_des_EP1","SVD_des_EP1"];];
Lega_MaxCash/*Max Payout*/= "10000";
Lega_Gold = ["ItemBriefcase100oz","ItemBriefcase90oz","ItemBriefcase80oz","ItemBriefcase70oz","ItemBriefcase60oz","ItemBriefcase50oz","ItemBriefcase40oz","ItemBriefcase30oz","ItemBriefcase20oz","ItemBriefcase10oz"];
Lega_Poor_Prizes = ["ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemMorphine","ItemBandage"];
Lega_Mid_Prizes = ["2000Rnd_762x51_M134","200Rnd_762x51_M240","100Rnd_127x99_M2","150Rnd_127x107_DSHKM"];
Lega_High_Items = ["EvMoney","ItemVault","ItemBriefcase100oz","ItemLockbox","30m_plot_kit"];
Lega_Legend_Items = ["PipeBomb","ItemHotwireKit"];
//End Of Config.

//Dont Touch Below
If(lega_cost_toolbelt)then{
  _legatool = Lega_Tool;
  Lega_Cost = _Legatool;
};
If(lega_cost_Item)then{
  _legaitem = Lega_Item;
  Lega_Cost = _Legatool;
};
///End Of File
