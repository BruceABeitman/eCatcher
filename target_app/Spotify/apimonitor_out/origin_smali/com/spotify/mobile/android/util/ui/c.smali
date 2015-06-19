.class public final Lcom/spotify/mobile/android/util/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:F

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ui/c;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/util/ui/TextContentFitter;
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/c;->a:Landroid/widget/TextView;

    const-string v1, "Did you forget to call withView?"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/c;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->values()[Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/spotify/mobile/android/util/ui/c;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/ui/c;->c:F

    new-instance v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ui/c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/ui/c;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/spotify/mobile/android/util/ui/c;->c:F

    iget-object v4, p0, Lcom/spotify/mobile/android/util/ui/c;->d:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;FLjava/util/ArrayList;B)V

    return-object v0
.end method

.method public final a(Landroid/widget/TextView;)Lcom/spotify/mobile/android/util/ui/c;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ui/c;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public final a(Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;)Lcom/spotify/mobile/android/util/ui/c;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Landroid/widget/TextView;)Lcom/spotify/mobile/android/util/ui/c;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ui/c;->b:Landroid/widget/TextView;

    return-object p0
.end method
