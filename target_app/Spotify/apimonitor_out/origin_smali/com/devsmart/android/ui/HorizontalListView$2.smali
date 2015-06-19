.class final Lcom/devsmart/android/ui/HorizontalListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devsmart/android/ui/HorizontalListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/devsmart/android/ui/HorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    return-void
.end method
