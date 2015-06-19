.class final Lcom/spotify/mobile/android/ui/fragments/logic/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/n;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "current_user"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "streaming_rule_shuffle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "product_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "country_code"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "can_stream"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->b:[Ljava/lang/String;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->b:[Ljava/lang/String;

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
    .registers 6

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b(Lcom/spotify/mobile/android/ui/fragments/logic/n;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b(Lcom/spotify/mobile/android/ui/fragments/logic/n;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c(Lcom/spotify/mobile/android/ui/fragments/logic/n;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Lcom/spotify/mobile/android/g/a;)Lcom/spotify/mobile/android/g/a;

    :goto_51
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->k(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->k(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->l(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Lcom/spotify/mobile/android/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/g/a;)V

    :cond_68
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V

    :cond_72
    return-void

    :cond_73
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;

    const-string v2, "premium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Lcom/spotify/mobile/android/g/a;)Lcom/spotify/mobile/android/g/a;

    goto :goto_51
.end method
