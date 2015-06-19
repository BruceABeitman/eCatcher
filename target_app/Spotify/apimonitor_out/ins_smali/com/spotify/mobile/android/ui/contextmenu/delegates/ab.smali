.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V
return-object v0
.end method