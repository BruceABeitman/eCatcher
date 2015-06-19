.class public Lorg/scribe/model/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Must provide a valid string as verifier"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/model/Verifier;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/scribe/model/Verifier;->value:Ljava/lang/String;

    return-object v0
.end method
