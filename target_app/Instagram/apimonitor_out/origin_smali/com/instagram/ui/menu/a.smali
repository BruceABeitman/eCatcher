.class public final Lcom/instagram/ui/menu/a;
.super Ljava/lang/Object;
.source "ButtonItem.java"


# instance fields
.field private a:I

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/ui/menu/a;->a:I

    iput-object p2, p0, Lcom/instagram/ui/menu/a;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/ui/menu/a;->a:I

    return v0
.end method

.method public final b()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/menu/a;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method
