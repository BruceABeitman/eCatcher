.class public final Lcom/instagram/android/util/f;
.super Ljava/lang/Object;
.source "ReportUserUtil.java"
.method public static a(Landroid/content/Context;Lcom/instagram/user/c/a;)V
.registers 6
const-string v0, "/users/%s/flag/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sget v1, Lcom/facebook/az;->report_inappropriate:I
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, v1}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method