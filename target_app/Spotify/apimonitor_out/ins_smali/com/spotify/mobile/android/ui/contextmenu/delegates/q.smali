.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V
return-object v0
.end method