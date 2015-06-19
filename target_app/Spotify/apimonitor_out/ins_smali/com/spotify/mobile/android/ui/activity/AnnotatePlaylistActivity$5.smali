.class final Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->j(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/Button;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-nez v0, :cond_21
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_21
const/4 v0, 0x1
:goto_1d
invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V
return-void
:cond_21
const/4 v0, 0x0
goto :goto_1d
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method