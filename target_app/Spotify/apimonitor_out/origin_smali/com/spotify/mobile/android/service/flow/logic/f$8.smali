.class final Lcom/spotify/mobile/android/service/flow/logic/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;
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
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;

.field private final b:[Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logged_in"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logging_in"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "payment_state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suppress_welcome_screen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "logging_out"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->b:[Ljava/lang/String;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->b:[Ljava/lang/String;

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
    .registers 13

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x1

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-static {p2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v1

    invoke-static {p2, v7}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v3

    invoke-static {p2, v9}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v0, :cond_52

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    if-ne v6, v9, :cond_52

    const-string v6, "opt-in-trial"

    aget-object v9, v0, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    const/4 v6, 0x1

    :try_start_40
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v6, 0x4561

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_51} :catch_9a

    move-result v5

    :cond_52
    :goto_52
    if-gtz v5, :cond_55

    move v4, v7

    :cond_55
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c()Lcom/spotify/mobile/android/service/flow/a;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/spotify/mobile/android/service/flow/login/o;

    if-eqz v6, :cond_68

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/p;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/service/flow/login/p;-><init>(ZZZZI)V

    invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/service/flow/login/p;)V

    :cond_68
    if-eqz v1, :cond_a1

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->d(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/k;->b()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->c:Z

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->e(Lcom/spotify/mobile/android/service/flow/logic/f;)Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(I)V

    :cond_88
    if-eqz v6, :cond_97

    invoke-virtual {v6}, Lcom/spotify/mobile/android/service/flow/login/o;->e_()Z

    move-result v0

    if-eqz v0, :cond_97

    if-nez v3, :cond_97

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->D()V

    :cond_97
    :goto_97
    iput-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->c:Z

    :cond_99
    return-void

    :catch_9a
    move-exception v0

    const-string v6, "Caught a NumberFormatException when parsing trial length"

    invoke-static {v6, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    :cond_a1
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->h(Lcom/spotify/mobile/android/service/flow/logic/f;)Z

    move-result v0

    if-eqz v0, :cond_ba

    if-nez v2, :cond_b0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->i(Lcom/spotify/mobile/android/service/flow/logic/f;)V

    :cond_b0
    :goto_b0
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/FragmentActivity;->setVisible(Z)V

    goto :goto_97

    :cond_ba
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$8;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j(Lcom/spotify/mobile/android/service/flow/logic/f;)V

    goto :goto_b0
.end method
