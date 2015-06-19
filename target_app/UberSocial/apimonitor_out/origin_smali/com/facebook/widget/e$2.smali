.class Lcom/facebook/widget/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/e;->a(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/facebook/widget/e;


# direct methods
.method constructor <init>(Lcom/facebook/widget/e;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/widget/e$2;->c:Lcom/facebook/widget/e;

    iput-object p2, p0, Lcom/facebook/widget/e$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/widget/e$2;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/widget/x;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/e$2;->c:Lcom/facebook/widget/e;

    iget-object v1, p0, Lcom/facebook/widget/e$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/widget/e$2;->b:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/e;Lcom/facebook/widget/x;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
