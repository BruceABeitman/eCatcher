.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
return-void
.end method
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
.registers 5
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
if-eqz p1, :cond_12
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;
:goto_6
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V
return-object v0
:cond_12
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;
goto :goto_6
.end method