.class public Lcom/millennialmedia/android/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field final synthetic c:Lcom/millennialmedia/android/cy;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/cy;Ljava/lang/String;D)V
    .registers 6

    iput-object p1, p0, Lcom/millennialmedia/android/dc;->c:Lcom/millennialmedia/android/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/dc;->a:Ljava/lang/String;

    double-to-int v0, p3

    iput v0, p0, Lcom/millennialmedia/android/dc;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/dc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/millennialmedia/android/dc;->b:I

    return v0
.end method
