.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/model/n;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V

    return-object v1
.end method

.method public final a(Lcom/spotify/mobile/android/model/a;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V

    return-object v1
.end method

.method public final a(Lcom/spotify/mobile/android/model/b;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/h;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/h;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/h;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;B)V

    return-object v1
.end method

.method public final a(Lcom/spotify/mobile/android/model/j;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    invoke-interface {p1}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V

    return-object v1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/h;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/h;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/h;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;B)V

    return-object v1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;

    move-result-object v0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/p;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V

    return-object v1
.end method
