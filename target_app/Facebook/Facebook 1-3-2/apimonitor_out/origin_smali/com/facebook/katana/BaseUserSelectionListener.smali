.class public Lcom/facebook/katana/BaseUserSelectionListener;
.super Ljava/lang/Object;
.source "BaseUserSelectionListener.java"

# interfaces
.implements Lcom/facebook/katana/UserSelectionListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/BaseUserSelectionListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onUserSelected(J)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/BaseUserSelectionListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V

    return-void
.end method
