.class Lcom/umeng/fb/a;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/fb/ContactActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/fb/a;->a:Lcom/umeng/fb/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/fb/a;->a:Lcom/umeng/fb/ContactActivity;

    invoke-virtual {v0}, Lcom/umeng/fb/ContactActivity;->a()V

    return-void
.end method
