.class final Lcom/bbm/ui/dj;
.super Ljava/lang/Object;
.source "LinkifyTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/ClickableSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/text/Spannable;

.field final synthetic b:Lcom/bbm/ui/LinkifyTextView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/LinkifyTextView;Landroid/text/Spannable;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/dj;->b:Lcom/bbm/ui/LinkifyTextView;

    iput-object p2, p0, Lcom/bbm/ui/dj;->a:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Landroid/text/style/ClickableSpan;

    check-cast p2, Landroid/text/style/ClickableSpan;

    iget-object v0, p0, Lcom/bbm/ui/dj;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/dj;->a:Landroid/text/Spannable;

    invoke-interface {v1, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
