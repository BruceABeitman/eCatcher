.class final Lcom/instagram/android/c/b/d;
.super Ljava/lang/Object;
.source "FacebookAccountsGraphRequest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/share/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/c/b/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/c/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/c/b/d;->a:Lcom/instagram/android/c/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/share/b/g;Lcom/instagram/share/b/g;)I
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/share/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/share/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/instagram/share/b/g;

    check-cast p2, Lcom/instagram/share/b/g;

    invoke-static {p1, p2}, Lcom/instagram/android/c/b/d;->a(Lcom/instagram/share/b/g;Lcom/instagram/share/b/g;)I

    move-result v0

    return v0
.end method
