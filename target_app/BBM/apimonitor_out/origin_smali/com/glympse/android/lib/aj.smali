.class public Lcom/glympse/android/lib/aj;
.super Ljava/lang/Object;
.source "ContactsManager.java"

# interfaces
.implements Lcom/glympse/android/lib/al;


# instance fields
.field private jc:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/glympse/android/lib/aj;->jc:I

    return-void
.end method


# virtual methods
.method public a(Lcom/glympse/android/lib/GPerson;Lcom/glympse/android/lib/GPerson;)I
    .registers 6

    const/4 v1, 0x1

    iget v0, p0, Lcom/glympse/android/lib/aj;->jc:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Platform;->compareStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    iget v0, p0, Lcom/glympse/android/lib/aj;->jc:I

    if-ne v0, v1, :cond_54

    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v0

    :goto_23
    if-nez v0, :cond_33

    iget v0, p0, Lcom/glympse/android/lib/aj;->jc:I

    if-ne v0, v1, :cond_59

    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    if-nez v0, :cond_33

    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedCompany()Ljava/lang/String;

    move-result-object v0

    :cond_33
    iget v2, p0, Lcom/glympse/android/lib/aj;->jc:I

    if-ne v2, v1, :cond_5e

    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    if-nez v2, :cond_4b

    iget v2, p0, Lcom/glympse/android/lib/aj;->jc:I

    if-ne v2, v1, :cond_63

    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v2

    :goto_45
    if-nez v2, :cond_4b

    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedCompany()Ljava/lang/String;

    move-result-object v2

    :cond_4b
    if-eqz v0, :cond_68

    if-eqz v2, :cond_68

    invoke-static {v0, v2}, Lcom/glympse/android/hal/Platform;->compareStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    :cond_54
    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_59
    invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_5e
    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_63
    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_68
    if-eqz v0, :cond_6c

    const/4 v0, -0x1

    goto :goto_1a

    :cond_6c
    if-eqz v2, :cond_70

    move v0, v1

    goto :goto_1a

    :cond_70
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/glympse/android/lib/GPerson;

    check-cast p2, Lcom/glympse/android/lib/GPerson;

    invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/aj;->a(Lcom/glympse/android/lib/GPerson;Lcom/glympse/android/lib/GPerson;)I

    move-result v0

    return v0
.end method
