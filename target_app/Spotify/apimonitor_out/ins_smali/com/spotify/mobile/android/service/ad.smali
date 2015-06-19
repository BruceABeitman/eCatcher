.class public final Lcom/spotify/mobile/android/service/ad;
.super Lcom/spotify/mobile/android/ui/fragments/x;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/x;-><init>()V
return-void
.end method
.method protected final a()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/ad;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_10
const v1, 0x7f0f025d
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/ad;->c(Ljava/lang/String;)V
:cond_10
return-void
.end method