.class public final Lcom/instagram/android/nux/ad;
.super Lcom/instagram/ui/dialog/g;
.source "LandingPageFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/ui/dialog/g;-><init>()V
return-void
.end method
.method public final U()Ljava/lang/String;
.registers 5
sget v0, Lcom/facebook/az;->connecting_to_x:I
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget v3, Lcom/facebook/az;->facebook:I
invoke-virtual {p0, v3}, Lcom/instagram/android/nux/ad;->c(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Lcom/instagram/android/nux/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method