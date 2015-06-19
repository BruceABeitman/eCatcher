.class final Lcom/bbm/ui/c/s;
.super Lcom/bbm/j/u;
.source "ChannelDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_14

    move v0, v1

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_20c

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_27
    const-string v0, "uri"

    iget-object v4, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v4}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->l(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->l(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "imagePath"

    iget-object v1, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->l(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_52
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a05ed

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "displayName"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_8d
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a05ee

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "customStatus"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_bc
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a05f0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f1

    const-string v0, "description"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_f1
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a05fe

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->H:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_126

    const-string v0, "phoneNumber"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_126
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a0603

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15b

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15b

    const-string v0, "contactEmailAddress"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_15b
    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a0608

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_190

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->P:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_190

    const-string v0, "webAddress"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v2

    :cond_190
    iget-object v4, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0611

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {v4, v0}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;Landroid/widget/Spinner;)Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->p(Lcom/bbm/ui/c/l;)I

    move-result v0

    iget-object v4, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v4}, Lcom/bbm/ui/c/l;->q(Lcom/bbm/ui/c/l;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-eq v0, v4, :cond_214

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->q(Lcom/bbm/ui/c/l;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_214

    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    iget-object v0, v0, Lcom/bbm/ui/c/l;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;

    iget-object v0, p0, Lcom/bbm/ui/c/s;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->q(Lcom/bbm/ui/c/l;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/bbm/util/bb;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "country"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "location"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v2

    :goto_1f5
    if-eqz v0, :cond_20c

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    const-string v3, "channel"

    invoke-static {v0, v3}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_20c
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_20c} :catch_20f

    :cond_20c
    :goto_20c
    move v0, v2

    goto/16 :goto_13

    :catch_20f
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_20c

    :cond_214
    move v0, v1

    goto :goto_1f5
.end method
