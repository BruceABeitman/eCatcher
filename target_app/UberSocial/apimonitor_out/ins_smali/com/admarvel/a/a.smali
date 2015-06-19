.class public Lcom/admarvel/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method