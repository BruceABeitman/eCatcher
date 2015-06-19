.class final Lcom/bbm/util/cg;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtil.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/cg;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/util/cg;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "pinPattern clickableSpan clicked"

    const-class v1, Lcom/bbm/util/LinkifyUtil;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/util/cg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/util/cg;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
