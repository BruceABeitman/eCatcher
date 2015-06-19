.class public final Lcom/facebook/b/a;
.super Ljava/lang/Throwable;
.source "DialogError.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/b/a;->a:I

    iput-object p3, p0, Lcom/facebook/b/a;->b:Ljava/lang/String;

    return-void
.end method
