.class final Lcom/spotify/mobile/android/service/flow/login/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/ae;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;Z)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/spotify/mobile/android/service/flow/login/v;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->g(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->q(Lcom/spotify/mobile/android/service/flow/login/t;)V

    goto :goto_8
.end method

.method public final a(Ljava/util/ArrayList;Lcom/spotify/mobile/android/service/flow/login/a/d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/spotify/mobile/android/service/flow/login/a/d;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->g(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/google/common/collect/ImmutableList;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->i(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/login/t;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I

    move-result v1

    if-eq v1, v2, :cond_c5

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const-string v3, "Test it!"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/spotify/mobile/android/service/flow/login/t;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3, v7}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/service/flow/login/t;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v4, v7}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/spotify/mobile/android/service/flow/login/t;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v5, v7}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/spotify/mobile/android/service/flow/login/t;->e:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v6, v7}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_80

    const-string v7, "email"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    if-eqz v4, :cond_87

    const-string v3, "username"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    if-eqz v5, :cond_8e

    const-string v3, "birthdate"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    if-eqz v6, :cond_95

    const-string v3, "gender"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/service/flow/login/t;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/service/flow/login/t;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/service/flow/login/t;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/service/flow/login/t;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/service/flow/login/t;->e:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->o(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/ac;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/ac;->a(ILjava/util/Map;)V

    goto/16 :goto_c

    :cond_c5
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/v$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/v$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/v;)V

    invoke-static {v0, p2, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/a/d;Lcom/spotify/mobile/android/service/flow/login/z;)V

    goto/16 :goto_c
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->g(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v1

    const-string v0, "email"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const-string v0, "username"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/google/common/collect/ImmutableList;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/v;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    goto :goto_8
.end method
