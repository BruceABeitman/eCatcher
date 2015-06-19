.class final Lcom/bbm/ui/di;
.super Ljava/lang/Object;
.source "LinkifyTextView.java"

# interfaces
.implements Lcom/bbm/ui/dm;


# instance fields
.field final synthetic a:Lcom/bbm/ui/LinkifyTextView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/LinkifyTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/di;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/di;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0, p1}, Lcom/bbm/ui/LinkifyTextView;->b(Lcom/bbm/ui/LinkifyTextView;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method
