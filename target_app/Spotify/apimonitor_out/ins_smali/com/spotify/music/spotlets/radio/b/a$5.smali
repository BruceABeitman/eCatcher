.class final Lcom/spotify/music/spotlets/radio/b/a$5;
.super Lcom/spotify/mobile/android/ui/adapter/x;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/spotlets/radio/b/a;
.method constructor <init>(Lcom/spotify/music/spotlets/radio/b/a;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/b/a$5;->a:Lcom/spotify/music/spotlets/radio/b/a;
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final a(ILandroid/view/View;Ljava/lang/String;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/adapter/x;->a(ILandroid/view/View;Ljava/lang/String;)V
check-cast p2, Lcom/spotify/android/paste/widget/SectionHeaderView;
const/4 v0, 0x3
if-ne p1, v0, :cond_d
const/4 v0, 0x1
:goto_9
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Z)V
return-void
:cond_d
const/4 v0, 0x0
goto :goto_9
.end method