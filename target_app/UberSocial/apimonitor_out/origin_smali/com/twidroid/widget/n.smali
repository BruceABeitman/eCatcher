.class Lcom/twidroid/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/widget/WidgetsContextMenu;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/twidroid/widget/WidgetsContextMenu;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/widget/n;->a:Lcom/twidroid/widget/WidgetsContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/widget/n;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/twidroid/widget/n;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/widget/n;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/widget/n;->c:Ljava/lang/CharSequence;

    return-object v0
.end method
