.class final Lcom/google/android/gms/internal/cs$a;
.super Ljava/lang/Exception;


# instance fields
.field private final oS:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/cs$a;->oS:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/cs$a;->oS:I

    return v0
.end method