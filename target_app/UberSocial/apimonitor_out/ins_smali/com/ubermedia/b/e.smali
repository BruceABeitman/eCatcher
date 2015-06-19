.class final Lcom/ubermedia/b/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/android/a/a/m;
.field private g:Landroid/app/Activity;
.field private h:Lcom/ubermedia/b/f;
.method public constructor <init>(Landroid/app/Activity;Lcom/ubermedia/b/f;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
iput-object p2, p0, Lcom/ubermedia/b/e;->h:Lcom/ubermedia/b/f;
return-void
.end method
.method static synthetic a(Lcom/ubermedia/b/e;)Lcom/ubermedia/b/f;
.registers 2
iget-object v0, p0, Lcom/ubermedia/b/e;->h:Lcom/ubermedia/b/f;
return-object v0
.end method
.method private a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-nez v0, :cond_11
:try_start_c
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:try_end_11
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12
:goto_11
:cond_11
return-void
:catch_12
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_11
.end method
.method public a(I)V
.registers 3
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/ubermedia/b/e;->h:Lcom/ubermedia/b/f;
if-eqz v0, :cond_c
new-instance v0, Lcom/ubermedia/b/e$1;
invoke-direct {v0, p0}, Lcom/ubermedia/b/e$1;-><init>(Lcom/ubermedia/b/e;)V
invoke-direct {p0, v0}, Lcom/ubermedia/b/e;->a(Ljava/lang/Runnable;)V
goto :goto_c
.end method
.method public b(I)V
.registers 3
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/ubermedia/b/e;->g:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
const/16 v0, 0x123
if-ne p1, v0, :cond_1a
new-instance v0, Lcom/ubermedia/b/e$2;
invoke-direct {v0, p0}, Lcom/ubermedia/b/e$2;-><init>(Lcom/ubermedia/b/e;)V
invoke-direct {p0, v0}, Lcom/ubermedia/b/e;->a(Ljava/lang/Runnable;)V
goto :goto_c
:cond_1a
new-instance v0, Lcom/ubermedia/b/e$3;
invoke-direct {v0, p0}, Lcom/ubermedia/b/e$3;-><init>(Lcom/ubermedia/b/e;)V
invoke-direct {p0, v0}, Lcom/ubermedia/b/e;->a(Ljava/lang/Runnable;)V
goto :goto_c
.end method
.method public c(I)V
.registers 4
new-instance v0, Lcom/ubermedia/b/e$4;
invoke-direct {v0, p0}, Lcom/ubermedia/b/e$4;-><init>(Lcom/ubermedia/b/e;)V
invoke-direct {p0, v0}, Lcom/ubermedia/b/e;->a(Ljava/lang/Runnable;)V
packed-switch p1, :pswitch_data_3c
:goto_b
return-void
:pswitch_c
const-string v0, "LicenseHelper"
const-string v1, "ERROR_NOT_MARKET_MANAGED"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:pswitch_14
const-string v0, "LicenseHelper"
const-string v1, "ERROR_INVALID_PACKAGE_NAME"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:pswitch_1c
const-string v0, "LicenseHelper"
const-string v1, "ERROR_NON_MATCHING_UID"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:pswitch_24
const-string v0, "LicenseHelper"
const-string v1, "ERROR_CHECK_IN_PROGRESS"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:pswitch_2c
const-string v0, "LicenseHelper"
const-string v1, "ERROR_INVALID_PUBLIC_KEY"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:pswitch_34
const-string v0, "LicenseHelper"
const-string v1, "ERROR_MISSING_PERMISSION"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:pswitch_data_3c
.packed-switch 0x1
:pswitch_14
:pswitch_1c
:pswitch_c
:pswitch_24
:pswitch_2c
:pswitch_34
.end packed-switch
.end method