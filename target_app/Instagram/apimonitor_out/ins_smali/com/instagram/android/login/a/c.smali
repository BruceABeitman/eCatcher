.class public final Lcom/instagram/android/login/a/c;
.super Lcom/instagram/ui/dialog/g;
.source "CreateAccountCallbacks.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/ui/dialog/g;-><init>()V
return-void
.end method
.method protected final U()Ljava/lang/String;
.registers 2
sget v0, Lcom/facebook/az;->registering:I
invoke-virtual {p0, v0}, Lcom/instagram/android/login/a/c;->c(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method