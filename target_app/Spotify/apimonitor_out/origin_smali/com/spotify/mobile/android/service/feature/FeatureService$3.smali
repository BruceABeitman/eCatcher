.class final Lcom/spotify/mobile/android/service/feature/FeatureService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/feature/FeatureService;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/feature/FeatureService;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_48

    iget-object v2, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/f;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_48
    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    sget-object v2, Lcom/spotify/mobile/android/provider/e;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 9

    const/4 v5, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/ui/fragments/logic/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_34
    iget-object v3, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v3}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Use of non-integer feature "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto :goto_16

    :cond_65
    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->e()V

    const-string v0, "Feature flags are loaded"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string v0, " -- Notifying listeners"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->c(Lcom/spotify/mobile/android/service/feature/FeatureService;)V

    :cond_8b
    return-void
.end method
