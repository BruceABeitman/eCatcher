.class public Lco/vine/android/UsersActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "UsersActivity.java"
.field public static final EXTRA_ANCHOR:Ljava/lang/String; = "anchor"
.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"
.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"
.field public static final EXTRA_USERS_TYPE:Ljava/lang/String; = "u_type"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "p_id"
.field private mFragment:Lco/vine/android/UsersFragment;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method public static launchUserListForNotification(Landroid/content/Context;JJ)V
.registers 8
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/UsersActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "u_type"
const/16 v2, 0xc
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "notification_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "anchor"
invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lco/vine/android/UsersActivity;->mFragment:Lco/vine/android/UsersFragment;
invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/UsersFragment;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lco/vine/android/UsersActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x0
const/4 v8, 0x1
const v4, 0x7f0300a2
invoke-super {p0, p1, v4, v8}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0}, Lco/vine/android/UsersActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
const/4 v6, 0x0
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
invoke-virtual {p0, v4, v5, v6, v7}, Lco/vine/android/UsersActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lco/vine/android/UsersActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
const-string v4, "u_type"
invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
sparse-switch v3, :sswitch_data_78
:goto_29
if-nez p1, :cond_54
new-instance v4, Lco/vine/android/UsersFragment;
invoke-direct {v4}, Lco/vine/android/UsersFragment;-><init>()V
iput-object v4, p0, Lco/vine/android/UsersActivity;->mFragment:Lco/vine/android/UsersFragment;
invoke-static {v2, v9}, Lco/vine/android/UsersFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;
move-result-object v1
const-string v4, "refresh"
invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
iget-object v4, p0, Lco/vine/android/UsersActivity;->mFragment:Lco/vine/android/UsersFragment;
invoke-virtual {v4, v1}, Lco/vine/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v4
const v5, 0x7f0a0102
iget-object v6, p0, Lco/vine/android/UsersActivity;->mFragment:Lco/vine/android/UsersFragment;
invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_54
const-string v1, " - Lco/vine/android/UsersActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_55
const v4, 0x7f0e0267
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
goto :goto_29
:sswitch_5c
const v4, 0x7f0e0266
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
goto :goto_29
:sswitch_63
const v4, 0x7f0e0268
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
goto :goto_29
:sswitch_6a
const v4, 0x7f0e01b3
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
goto :goto_29
:sswitch_71
const-string v4, ""
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
goto :goto_29
nop
:sswitch_data_78
.sparse-switch
0x1 -> :sswitch_55
0x2 -> :sswitch_5c
0x5 -> :sswitch_63
0x9 -> :sswitch_6a
0xc -> :sswitch_71
.end sparse-switch
.end method