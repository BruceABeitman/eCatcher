.class public final enum Lcom/instagram/android/j/a;
.super Ljava/lang/Enum;
.source "SimilarAccountEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/j/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/android/j/a;

.field public static final enum b:Lcom/instagram/android/j/a;

.field public static final enum c:Lcom/instagram/android/j/a;

.field public static final enum d:Lcom/instagram/android/j/a;

.field private static final synthetic f:[Lcom/instagram/android/j/a;


# instance fields
.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/instagram/android/j/a;

    const-string v1, "Impression"

    const-string v2, "similar_user_impression"

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/android/j/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/j/a;->a:Lcom/instagram/android/j/a;

    new-instance v0, Lcom/instagram/android/j/a;

    const-string v1, "FollowButtonTapped"

    const-string v2, "similar_user_follow_button_tapped"

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/android/j/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/j/a;->b:Lcom/instagram/android/j/a;

    new-instance v0, Lcom/instagram/android/j/a;

    const-string v1, "UserNameTapped"

    const-string v2, "similar_username_tapped"

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/android/j/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/j/a;->c:Lcom/instagram/android/j/a;

    new-instance v0, Lcom/instagram/android/j/a;

    const-string v1, "SuggestionsClosed"

    const-string v2, "similar_user_suggestions_closed"

    invoke-direct {v0, v1, v6, v2}, Lcom/instagram/android/j/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/j/a;->d:Lcom/instagram/android/j/a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/android/j/a;

    sget-object v1, Lcom/instagram/android/j/a;->a:Lcom/instagram/android/j/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/j/a;->b:Lcom/instagram/android/j/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/j/a;->c:Lcom/instagram/android/j/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/j/a;->d:Lcom/instagram/android/j/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/j/a;->f:[Lcom/instagram/android/j/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/instagram/android/j/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/j/a;
    .registers 2

    const-class v0, Lcom/instagram/android/j/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/j/a;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/j/a;
    .registers 1

    sget-object v0, Lcom/instagram/android/j/a;->f:[Lcom/instagram/android/j/a;

    invoke-virtual {v0}, [Lcom/instagram/android/j/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/j/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/j/a;->e:Ljava/lang/String;

    return-object v0
.end method
