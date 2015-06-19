.class final Lcom/bbm/util/ee;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/util/eo;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bbm/util/eo;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iput-object p2, p0, Lcom/bbm/util/ee;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    sget-object v0, Lcom/bbm/util/ec;->d:[I

    iget-object v1, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-object v1, v1, Lcom/bbm/util/eo;->p:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-object v0, v0, Lcom/bbm/util/eo;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-object v1, v1, Lcom/bbm/util/eo;->i:Ljava/lang/String;

    sget-object v2, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;

    iget-object v3, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-boolean v3, v3, Lcom/bbm/util/eo;->m:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V

    goto :goto_f

    :pswitch_22
    iget-object v0, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-object v0, v0, Lcom/bbm/util/eo;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-object v1, v1, Lcom/bbm/util/eo;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/util/ee;->a:Lcom/bbm/util/eo;

    iget-boolean v2, v2, Lcom/bbm/util/eo;->m:Z

    sget-object v3, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;

    iget-object v4, p0, Lcom/bbm/util/ee;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/b/aj;Landroid/app/Activity;)V

    goto :goto_f

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_10
        :pswitch_22
    .end packed-switch
.end method
