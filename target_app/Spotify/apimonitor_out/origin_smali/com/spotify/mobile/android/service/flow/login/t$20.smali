.class final Lcom/spotify/mobile/android/service/flow/login/t$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "\n - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v3, 0x7f0f00fe

    const v4, 0x7f0f00f8

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->g(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->i(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->i(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;I)I

    new-instance v1, Lcom/spotify/android/paste/app/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->k(Lcom/spotify/mobile/android/service/flow/login/t;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/spotify/android/paste/app/b;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0f0100

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->a(I)Lcom/spotify/android/paste/app/b;

    sparse-switch p1, :sswitch_data_1b4

    const v0, 0x7f0f00fb

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->b(I)Lcom/spotify/android/paste/app/b;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20$8;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$8;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v4, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    :goto_62
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;I)I

    invoke-virtual {v1}, Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    goto :goto_1e

    :sswitch_6f
    invoke-virtual {v1}, Lcom/spotify/android/paste/app/b;->b()Lcom/spotify/android/paste/app/b;

    const v0, 0x7f0f00fc

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->b(I)Lcom/spotify/android/paste/app/b;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v4, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    goto :goto_62

    :sswitch_81
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0f00fa

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    goto :goto_1e

    :sswitch_90
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0f01f4

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    goto :goto_1e

    :sswitch_9f
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v3

    const-string v0, "email"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    const-string v0, "username"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v3

    const-string v0, "birth_year"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v3

    const-string v0, "birth_month"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v3

    const-string v0, "birth_day"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v3

    const-string v0, "birthdate"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const v3, 0x7f0f0391

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t$20;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const v3, 0x7f0f0212

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_152
    invoke-virtual {v1}, Lcom/spotify/android/paste/app/b;->b()Lcom/spotify/android/paste/app/b;

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->b(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v4, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    goto/16 :goto_62

    :sswitch_162
    invoke-virtual {v1}, Lcom/spotify/android/paste/app/b;->b()Lcom/spotify/android/paste/app/b;

    const v0, 0x7f0f00f9

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->b(I)Lcom/spotify/android/paste/app/b;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$3;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v3, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    const v0, 0x7f0f00ff

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/t$20$4;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$4;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/android/paste/app/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    goto/16 :goto_62

    :sswitch_180
    invoke-virtual {v1}, Lcom/spotify/android/paste/app/b;->b()Lcom/spotify/android/paste/app/b;

    const v0, 0x7f0f0101

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->b(I)Lcom/spotify/android/paste/app/b;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$5;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v3, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    const v0, 0x7f0f00fd

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/t$20$6;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$6;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/android/paste/app/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    goto/16 :goto_62

    :sswitch_19e
    invoke-virtual {v1}, Lcom/spotify/android/paste/app/b;->b()Lcom/spotify/android/paste/app/b;

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/service/flow/login/t$20;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/app/b;->b(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20$7;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V

    invoke-virtual {v1, v4, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    goto/16 :goto_62

    :sswitch_data_1b4
    .sparse-switch
        -0x1 -> :sswitch_162
        0x5 -> :sswitch_180
        0xa -> :sswitch_6f
        0x14 -> :sswitch_81
        0x64 -> :sswitch_9f
        0x78 -> :sswitch_19e
        0x82 -> :sswitch_90
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/service/v;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->g(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->D()Lcom/spotify/mobile/android/service/flow/login/u;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->h(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/spotify/mobile/android/service/flow/login/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/service/v;)V

    goto :goto_8
.end method
