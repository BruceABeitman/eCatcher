.class public final Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;
.super Ljava/lang/Object;
.field public final appIndexingUrl:Landroid/net/Uri;
.field public final viewId:I
.field public final webUrl:Landroid/net/Uri;
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;
iput-object p2, p0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;
invoke-virtual {p3}, Landroid/view/View;->getId()I
move-result v0
iput v0, p0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I
return-void
.end method