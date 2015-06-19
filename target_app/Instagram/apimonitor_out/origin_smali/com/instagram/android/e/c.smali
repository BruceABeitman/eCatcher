.class public final Lcom/instagram/android/e/c;
.super Ljava/lang/Object;
.source "RegionData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/android/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/e/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/e/c;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/instagram/android/e/c;)I
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/e/c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/instagram/android/e/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/e/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/e/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/instagram/android/e/c;

    invoke-direct {p0, p1}, Lcom/instagram/android/e/c;->a(Lcom/instagram/android/e/c;)I

    move-result v0

    return v0
.end method
