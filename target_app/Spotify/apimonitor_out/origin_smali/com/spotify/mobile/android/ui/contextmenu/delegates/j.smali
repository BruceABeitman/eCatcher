.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;B)V

    return-object v0
.end method
