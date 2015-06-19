.class final Lcom/bbm/ui/bh;
.super Ljava/lang/Object;
.source "EmoticonInputPanel.java"

# interfaces
.implements Lcom/bbm/ui/gi;


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonInputPanel;


# direct methods
.method constructor <init>(Lcom/bbm/ui/EmoticonInputPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/bh;->a:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/gf;I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/bh;->a:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/ui/gi;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/bh;->a:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/ui/gi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bbm/ui/gi;->a(Lcom/bbm/d/gf;I)V

    :cond_11
    return-void
.end method
