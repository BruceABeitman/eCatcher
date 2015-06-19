.class final Lcom/bbm/util/ds;
.super Ljava/lang/Object;
.source "TpaUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/ds;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/util/ds;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/util/ds;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/util/ds;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
