.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;)V
return-void
.end method
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
if-eqz p1, :cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
:goto_6
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
return-object v0
:cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
goto :goto_6
.end method