.class public Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;
.super Ljava/lang/Object;
.source "StatusErrorCodeMessage.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/4 v0, 0x0
sparse-switch p1, :sswitch_data_162
:sswitch_8
:goto_8
return-object v0
:sswitch_9
const v2, 0x7f080224
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_11
const v2, 0x7f080225
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_19
const v2, 0x7f080226
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_21
const v2, 0x7f08013b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_29
const v2, 0x7f080227
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_31
const v2, 0x7f080278
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_39
const v2, 0x7f080228
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_41
const v2, 0x7f080229
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_49
const v2, 0x7f08022a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_51
const v2, 0x7f08022b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_59
const v2, 0x7f08022c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_61
const v2, 0x7f08027b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_69
const v2, 0x7f08022d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_71
const v2, 0x7f08022e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_79
const v2, 0x7f08022f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_81
const v2, 0x7f080279
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_8
:sswitch_89
const v2, 0x7f08027a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_92
const v2, 0x7f080230
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_9b
const v2, 0x7f08013c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_a4
const v2, 0x7f08013d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_ad
const v2, 0x7f08013e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_b6
const v2, 0x7f08013f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_bf
const v2, 0x7f080140
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_c8
const v2, 0x7f080141
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_d1
const v2, 0x7f080142
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_da
const v2, 0x7f080143
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_e3
const v2, 0x7f080144
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_ec
const v2, 0x7f080145
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_f5
const v2, 0x7f080146
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_fe
const v2, 0x7f080147
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_107
const v2, 0x7f080148
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_110
const v2, 0x7f080149
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_119
const v2, 0x7f08014a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_122
const v2, 0x7f08014c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_12b
const v2, 0x7f08014b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_134
const v2, 0x7f08014d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_13d
const v2, 0x7f08014e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_146
const v2, 0x7f08014f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_14f
const v2, 0x7f080150
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
:sswitch_158
const v2, 0x7f080151
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8
nop
:sswitch_data_162
.sparse-switch
0xc8 -> :sswitch_9
0x191 -> :sswitch_11
0x1a4 -> :sswitch_19
0x1b3 -> :sswitch_8
0x1f4 -> :sswitch_21
0x2710 -> :sswitch_29
0x2711 -> :sswitch_31
0x2712 -> :sswitch_39
0x2713 -> :sswitch_41
0x2714 -> :sswitch_49
0x2715 -> :sswitch_51
0x2716 -> :sswitch_59
0x2717 -> :sswitch_61
0x2718 -> :sswitch_69
0x2719 -> :sswitch_71
0x271a -> :sswitch_79
0x271b -> :sswitch_81
0x271c -> :sswitch_89
0x271d -> :sswitch_92
0x2904 -> :sswitch_9b
0x2905 -> :sswitch_a4
0x290e -> :sswitch_ad
0x290f -> :sswitch_b6
0x2910 -> :sswitch_bf
0x2911 -> :sswitch_c8
0x2912 -> :sswitch_d1
0x2913 -> :sswitch_da
0x2914 -> :sswitch_e3
0x2915 -> :sswitch_ec
0x2916 -> :sswitch_f5
0x2917 -> :sswitch_fe
0x2918 -> :sswitch_107
0x2919 -> :sswitch_110
0x291a -> :sswitch_119
0x291c -> :sswitch_12b
0x291d -> :sswitch_122
0x2922 -> :sswitch_134
0x2923 -> :sswitch_13d
0x2924 -> :sswitch_146
0x2925 -> :sswitch_14f
0x2926 -> :sswitch_158
.end sparse-switch
.end method