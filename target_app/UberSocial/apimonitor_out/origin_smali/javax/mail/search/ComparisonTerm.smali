.class public abstract Ljavax/mail/search/ComparisonTerm;
.super Ljavax/mail/search/SearchTerm;
.source "SourceFile"


# static fields
.field public static final EQ:I = 0x3

.field public static final GE:I = 0x6

.field public static final GT:I = 0x5

.field public static final LE:I = 0x1

.field public static final LT:I = 0x2

.field public static final NE:I = 0x4

.field private static final serialVersionUID:J = 0x14370cafcc71f144L


# instance fields
.field protected comparison:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/mail/search/ComparisonTerm;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljavax/mail/search/ComparisonTerm;

    iget v1, p1, Ljavax/mail/search/ComparisonTerm;->comparison:I

    iget v2, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    return v0
.end method
