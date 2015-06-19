.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
return-void
.end method
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
if-eqz p1, :cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;
:goto_6
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
return-object v0
:cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;
goto :goto_6
.end method