.class public Lcom/a/a/d;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/a/a/m;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/v;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/a/a/g;

.field private p:Lcom/a/a/f;

.field private final q:I

.field private final r:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/a/a/d;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/d;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 4

    const/high16 v0, -0x4000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/d;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/m;

    invoke-direct {v0}, Lcom/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput p1, p0, Lcom/a/a/d;->q:I

    iput-object p2, p0, Lcom/a/a/d;->r:Landroid/accounts/Account;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/a/a/d;->e:Ljava/util/List;

    if-nez v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/a/a/d;->e:Ljava/util/List;

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_21

    iget v3, p0, Lcom/a/a/d;->q:I

    invoke-static {v3}, Lcom/a/a/c;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_21
    move-object v0, v2

    :goto_22
    new-instance v1, Lcom/a/a/q;

    invoke-direct {v1, v0, p1, p3, p4}, Lcom/a/a/q;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/a/a/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v0

    :goto_32
    if-ge v3, v5, :cond_6a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x70

    if-eq v6, v7, :cond_40

    const/16 v7, 0x50

    if-ne v6, v7, :cond_49

    :cond_40
    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_49
    const/16 v7, 0x77

    if-eq v6, v7, :cond_51

    const/16 v7, 0x57

    if-ne v6, v7, :cond_58

    :cond_51
    const/16 v0, 0x3b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_46

    :cond_58
    const/16 v7, 0x30

    if-gt v7, v6, :cond_60

    const/16 v7, 0x39

    if-le v6, v7, :cond_66

    :cond_60
    if-nez v3, :cond_46

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_46

    :cond_66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_6a
    if-nez v0, :cond_83

    iget v0, p0, Lcom/a/a/d;->q:I

    invoke-static {v0}, Lcom/a/a/ag;->a(I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    if-nez v0, :cond_e

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/p;

    iget-object v3, v0, Lcom/a/a/p;->c:Ljava/lang/String;

    if-nez v3, :cond_14

    iput-object p1, v0, Lcom/a/a/p;->c:Ljava/lang/String;

    goto :goto_d

    :cond_27
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    :cond_b
    iget-object v6, p0, Lcom/a/a/d;->h:Ljava/util/List;

    new-instance v0, Lcom/a/a/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    :cond_1d
    const/4 v3, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_85

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "PREF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    move v4, v5

    goto :goto_26

    :cond_42
    const-string v9, "HOME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    move v3, v5

    goto :goto_26

    :cond_4c
    const-string v9, "WORK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    move v3, v6

    goto :goto_26

    :cond_56
    if-gez v3, :cond_82

    const-string v1, "X-"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_64
    move v1, v2

    :goto_65
    move v3, v1

    move-object v1, v0

    goto :goto_26

    :cond_68
    move v0, v3

    :goto_69
    if-gez v0, :cond_6c

    const/4 v0, 0x3

    :cond_6c
    iget-object v2, p0, Lcom/a/a/d;->k:Ljava/util/List;

    if-nez v2, :cond_77

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/a/a/d;->k:Ljava/util/List;

    :cond_77
    iget-object v2, p0, Lcom/a/a/d;->k:Ljava/util/List;

    new-instance v3, Lcom/a/a/t;

    invoke-direct {v3, p1, v0, v1, v4}, Lcom/a/a/t;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_82
    move-object v0, v1

    move v1, v3

    goto :goto_65

    :cond_85
    move v4, v2

    move v0, v3

    goto :goto_69
.end method

.method private a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    if-le v0, v2, :cond_b1

    move v1, v2

    :goto_2e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8c

    move v5, v4

    :goto_3b
    if-ge v5, v1, :cond_af

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6e

    move v0, v3

    :goto_4a
    if-eqz v0, :cond_8c

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_72

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/a/a/m;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    aget-object v2, v0, v4

    iput-object v2, v1, Lcom/a/a/m;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    aget-object v0, v0, v6

    iput-object v0, v1, Lcom/a/a/m;->h:Ljava/lang/String;

    goto :goto_22

    :cond_6e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3b

    :cond_72
    if-ne v1, v6, :cond_81

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/a/a/m;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    aget-object v0, v0, v4

    iput-object v0, v1, Lcom/a/a/m;->h:Ljava/lang/String;

    goto :goto_22

    :cond_81
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->h:Ljava/lang/String;

    goto :goto_22

    :cond_8c
    packed-switch v1, :pswitch_data_b4

    :goto_8f
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->g:Ljava/lang/String;

    goto :goto_22

    :pswitch_9a
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->i:Ljava/lang/String;

    :pswitch_a4
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->h:Ljava/lang/String;

    goto :goto_8f

    :cond_af
    move v0, v4

    goto :goto_4a

    :cond_b1
    move v1, v0

    goto/16 :goto_2e

    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_a4
        :pswitch_9a
    .end packed-switch
.end method

.method private static a(Ljava/util/List;Lcom/a/a/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/a/a/i;",
            ">;",
            "Lcom/a/a/j;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    invoke-interface {v0}, Lcom/a/a/i;->a()Lcom/a/a/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/a/j;->a(Lcom/a/a/k;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    invoke-interface {p1, v0}, Lcom/a/a/j;->a(Lcom/a/a/i;)Z

    goto :goto_1a

    :cond_2a
    invoke-interface {p1}, Lcom/a/a/j;->c()V

    :cond_2d
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "SORT-AS"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v5, :cond_35

    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect multiple SORT_AS parameters detected: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/a/a/d;->q:I

    invoke-static {v0, v1}, Lcom/a/a/ag;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_62
    if-nez p1, :cond_66

    sget-object p1, Lcom/a/a/d;->s:Ljava/util/List;

    :cond_66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_d6

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    :goto_79
    if-ge v2, v6, :cond_a8

    if-le v2, v5, :cond_82

    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_82
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_79

    :cond_8f
    move-object v4, v3

    goto :goto_62

    :pswitch_91
    const-string v0, ""

    move-object v1, v0

    move-object v2, v3

    :goto_95
    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    if-nez v0, :cond_ae

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9e
    return-void

    :pswitch_9f
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    move-object v2, v3

    goto :goto_95

    :cond_a8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    goto :goto_95

    :cond_ae
    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/p;

    iget-object v6, v0, Lcom/a/a/p;->a:Ljava/lang/String;

    if-nez v6, :cond_b4

    iget-object v6, v0, Lcom/a/a/p;->b:Ljava/lang/String;

    if-nez v6, :cond_b4

    iput-object v1, v0, Lcom/a/a/p;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/p;->b:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/a/a/p;->d:Z

    goto :goto_9e

    :cond_cf
    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9e

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_91
        :pswitch_9f
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 12

    const/16 v10, 0x20

    const/4 v9, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v4, v4, Lcom/a/a/m;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->f:Ljava/lang/String;

    :cond_15
    :goto_15
    if-nez v0, :cond_19

    const-string v0, ""

    :cond_19
    return-object v0

    :cond_1a
    iget-object v4, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v5, v4, Lcom/a/a/m;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v5, v4, Lcom/a/a/m;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v5, v4, Lcom/a/a/m;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v5, v4, Lcom/a/a/m;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v4, v4, Lcom/a/a/m;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_62

    move v4, v2

    :goto_45
    if-nez v4, :cond_64

    iget v0, p0, Lcom/a/a/d;->q:I

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v1, v1, Lcom/a/a/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v2, v2, Lcom/a/a/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v3, v3, Lcom/a/a/m;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v4, v4, Lcom/a/a/m;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v5, v5, Lcom/a/a/m;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/a/a/ag;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_62
    move v4, v1

    goto :goto_45

    :cond_64
    iget-object v4, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v5, v4, Lcom/a/a/m;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_94

    iget-object v5, v4, Lcom/a/a/m;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_94

    iget-object v4, v4, Lcom/a/a/m;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_94

    move v4, v2

    :goto_7f
    if-nez v4, :cond_96

    iget v0, p0, Lcom/a/a/d;->q:I

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v1, v1, Lcom/a/a/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v2, v2, Lcom/a/a/m;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v3, v3, Lcom/a/a/m;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/ag;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_94
    move v4, v1

    goto :goto_7f

    :cond_96
    iget-object v4, p0, Lcom/a/a/d;->f:Ljava/util/List;

    if-eqz v4, :cond_ae

    iget-object v4, p0, Lcom/a/a/d;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_ae

    iget-object v0, p0, Lcom/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h;

    iget-object v0, v0, Lcom/a/a/h;->a:Ljava/lang/String;

    goto/16 :goto_15

    :cond_ae
    iget-object v4, p0, Lcom/a/a/d;->e:Ljava/util/List;

    if-eqz v4, :cond_c6

    iget-object v4, p0, Lcom/a/a/d;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c6

    iget-object v0, p0, Lcom/a/a/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/q;

    iget-object v0, v0, Lcom/a/a/q;->a:Ljava/lang/String;

    goto/16 :goto_15

    :cond_c6
    iget-object v4, p0, Lcom/a/a/d;->g:Ljava/util/List;

    if-eqz v4, :cond_145

    iget-object v4, p0, Lcom/a/a/d;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_145

    iget-object v0, p0, Lcom/a/a/d;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/s;

    iget v4, p0, Lcom/a/a/d;->q:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, v0, Lcom/a/a/s;->a:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v7, v0, Lcom/a/a/s;->b:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/a/a/s;->c:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v0, Lcom/a/a/s;->d:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, v0, Lcom/a/a/s;->e:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v0, Lcom/a/a/s;->f:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v0, v0, Lcom/a/a/s;->g:Ljava/lang/String;

    aput-object v0, v6, v3

    invoke-static {v4}, Lcom/a/a/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_122

    move v0, v2

    move v2, v3

    :goto_10b
    if-ltz v2, :cond_13b

    aget-object v3, v6, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11d

    if-nez v0, :cond_120

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_11a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    add-int/lit8 v2, v2, -0x1

    goto :goto_10b

    :cond_120
    move v0, v1

    goto :goto_11a

    :cond_122
    move v0, v2

    move v2, v1

    :goto_124
    if-ge v2, v9, :cond_13b

    aget-object v3, v6, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_136

    if-nez v0, :cond_139

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_133
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_136
    add-int/lit8 v2, v2, 0x1

    goto :goto_124

    :cond_139
    move v0, v1

    goto :goto_133

    :cond_13b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :cond_145
    iget-object v2, p0, Lcom/a/a/d;->h:Ljava/util/List;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/a/a/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15

    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/a/a/p;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16b

    iget-object v2, v0, Lcom/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16b
    iget-object v2, v0, Lcom/a/a/p;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_183

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_17e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17e
    iget-object v2, v0, Lcom/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_183
    iget-object v2, v0, Lcom/a/a/p;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_196

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_196
    iget-object v0, v0, Lcom/a/a/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15
.end method

.method public a(Lcom/a/a/ae;)V
    .registers 15

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/a/a/ae;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/a/a/ae;->c:Ljava/util/Map;

    iget-object v9, p1, Lcom/a/a/ae;->e:Ljava/util/List;

    iget-object v10, p1, Lcom/a/a/ae;->f:[B

    if-eqz v9, :cond_15

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    :cond_15
    if-nez v10, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    if-eqz v9, :cond_6c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_60

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_29
    :goto_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, -0x1

    if-lez v0, :cond_29

    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_42
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4b
    const-string v0, "VERSION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "FN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput-object v1, v0, Lcom/a/a/m;->f:Ljava/lang/String;

    goto :goto_17

    :cond_60
    if-ne v1, v4, :cond_69

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_46

    :cond_69
    const-string v0, ""

    goto :goto_46

    :cond_6c
    move-object v1, v2

    goto :goto_4b

    :cond_6e
    const-string v0, "NAME"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput-object v1, v0, Lcom/a/a/m;->f:Ljava/lang/String;

    goto :goto_17

    :cond_85
    const-string v0, "N"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    iget v0, p0, Lcom/a/a/d;->q:I

    invoke-static {v0}, Lcom/a/a/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    :cond_b3
    :goto_b3
    if-eqz v9, :cond_17

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v1, 0x5

    if-le v0, v1, :cond_bf

    const/4 v0, 0x5

    :cond_bf
    packed-switch v0, :pswitch_data_5c8

    :goto_c2
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->a:Ljava/lang/String;

    goto/16 :goto_17

    :cond_ce
    const-string v0, "SORT-AS"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_b3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v4, :cond_100

    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/a/a/d;->q:I

    invoke-static {v0, v1}, Lcom/a/a/ag;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_117

    move v0, v8

    :cond_117
    packed-switch v0, :pswitch_data_5d4

    :goto_11a
    iget-object v2, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/a/a/m;->g:Ljava/lang/String;

    goto :goto_b3

    :pswitch_125
    iget-object v2, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/a/a/m;->i:Ljava/lang/String;

    :pswitch_12f
    iget-object v2, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/a/a/m;->h:Ljava/lang/String;

    goto :goto_11a

    :pswitch_13a
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->e:Ljava/lang/String;

    :pswitch_145
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->d:Ljava/lang/String;

    :pswitch_14f
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->c:Ljava/lang/String;

    :pswitch_159
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a/a/m;->b:Ljava/lang/String;

    goto/16 :goto_c2

    :cond_165
    const-string v0, "SORT-STRING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput-object v1, v0, Lcom/a/a/m;->j:Ljava/lang/String;

    goto/16 :goto_17

    :cond_173
    const-string v0, "NICKNAME"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    const-string v0, "X-NICKNAME"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    :cond_183
    iget-object v0, p0, Lcom/a/a/d;->l:Ljava/util/List;

    if-nez v0, :cond_18e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->l:Ljava/util/List;

    :cond_18e
    iget-object v0, p0, Lcom/a/a/d;->l:Ljava/util/List;

    new-instance v2, Lcom/a/a/n;

    invoke-direct {v2, v1}, Lcom/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_19a
    const-string v0, "SOUND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_17

    const-string v2, "X-IRMC-N"

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/a/a/d;->q:I

    invoke-static {v1, v0}, Lcom/a/a/ag;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/d;->a(Ljava/util/List;)V

    goto/16 :goto_17

    :cond_1bf
    const-string v0, "ADR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_274

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cb

    move v0, v3

    :goto_1de
    if-nez v0, :cond_17

    const/4 v1, -0x1

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5bf

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v2

    move v6, v1

    move v1, v3

    :goto_1f2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_259

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "PREF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20e

    move v1, v4

    goto :goto_1f2

    :cond_20e
    const-string v11, "HOME"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_219

    move-object v5, v2

    move v6, v4

    goto :goto_1f2

    :cond_219
    const-string v11, "WORK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_229

    const-string v11, "COMPANY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22c

    :cond_229
    move-object v5, v2

    move v6, v7

    goto :goto_1f2

    :cond_22c
    const-string v11, "PARCEL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5bb

    const-string v11, "DOM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5bb

    const-string v11, "INTL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5bb

    if-gez v6, :cond_5bb

    const-string v5, "X-"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_255

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v6, v3

    goto :goto_1f2

    :cond_255
    move v5, v3

    :goto_256
    move v6, v5

    move-object v5, v0

    goto :goto_1f2

    :cond_259
    move v0, v6

    :goto_25a
    if-gez v0, :cond_5b8

    :goto_25c
    iget-object v0, p0, Lcom/a/a/d;->g:Ljava/util/List;

    if-nez v0, :cond_267

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d;->g:Ljava/util/List;

    :cond_267
    iget-object v0, p0, Lcom/a/a/d;->g:Ljava/util/List;

    iget v2, p0, Lcom/a/a/d;->q:I

    invoke-static {v9, v4, v5, v1, v2}, Lcom/a/a/s;->a(Ljava/util/List;ILjava/lang/String;ZI)Lcom/a/a/s;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_274
    const-string v0, "EMAIL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f1

    const/4 v5, -0x1

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5b4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v3

    :goto_28c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PREF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a6

    move v6, v4

    goto :goto_28c

    :cond_2a6
    const-string v11, "HOME"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b0

    move v5, v4

    goto :goto_28c

    :cond_2b0
    const-string v11, "WORK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2ba

    move v5, v7

    goto :goto_28c

    :cond_2ba
    const-string v11, "CELL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c4

    const/4 v5, 0x4

    goto :goto_28c

    :cond_2c4
    if-gez v5, :cond_5b0

    const-string v2, "X-"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d2
    move v2, v3

    :goto_2d3
    move v5, v2

    move-object v2, v0

    goto :goto_28c

    :cond_2d6
    move v0, v5

    :goto_2d7
    if-gez v0, :cond_2da

    move v0, v8

    :cond_2da
    iget-object v3, p0, Lcom/a/a/d;->f:Ljava/util/List;

    if-nez v3, :cond_2e5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/a/a/d;->f:Ljava/util/List;

    :cond_2e5
    iget-object v3, p0, Lcom/a/a/d;->f:Ljava/util/List;

    new-instance v4, Lcom/a/a/h;

    invoke-direct {v4, v1, v0, v2, v6}, Lcom/a/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_2f1
    const-string v0, "ORG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_322

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_31d

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_307
    :goto_307
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PREF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    move v3, v4

    goto :goto_307

    :cond_31d
    invoke-direct {p0, v9, v6, v3}, Lcom/a/a/d;->a(Ljava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_17

    :cond_322
    const-string v0, "TITLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32f

    invoke-direct {p0, v1}, Lcom/a/a/d;->a(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_32f
    const-string v0, "ROLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "PHOTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_347

    const-string v0, "LOGO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39a

    :cond_347
    const-string v0, "VALUE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_359

    const-string v1, "URL"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_359
    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_382

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_368
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_383

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PREF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37e

    move v3, v4

    goto :goto_368

    :cond_37e
    if-nez v1, :cond_5ad

    :goto_380
    move-object v1, v0

    goto :goto_368

    :cond_382
    move-object v1, v2

    :cond_383
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_38e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d;->b:Ljava/util/List;

    :cond_38e
    new-instance v0, Lcom/a/a/r;

    invoke-direct {v0, v1, v10, v3}, Lcom/a/a/r;-><init>(Ljava/lang/String;[BZ)V

    iget-object v1, p0, Lcom/a/a/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_39a
    const-string v0, "TEL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40c

    iget v0, p0, Lcom/a/a/d;->q:I

    invoke-static {v0}, Lcom/a/a/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3d6

    const-string v0, "sip:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c3

    move v0, v4

    move-object v5, v2

    :goto_3b4
    if-eqz v0, :cond_3d9

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v1, v0}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_17

    :cond_3c3
    const-string v0, "tel:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d3

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v3

    goto :goto_3b4

    :cond_3d3
    move v0, v3

    move-object v5, v1

    goto :goto_3b4

    :cond_3d6
    move v0, v3

    move-object v5, v1

    goto :goto_3b4

    :cond_3d9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v5}, Lcom/a/a/ag;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_404

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3f5
    if-eqz v0, :cond_40a

    const-string v6, "PREF"

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40a

    :goto_3ff
    invoke-direct {p0, v1, v5, v2, v4}, Lcom/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_17

    :cond_404
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, v3

    goto :goto_3f5

    :cond_40a
    move v4, v3

    goto :goto_3ff

    :cond_40c
    const-string v0, "X-SKYPE-PSTNNUMBER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42e

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_42c

    const-string v5, "PREF"

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42c

    :goto_426
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_17

    :cond_42c
    move v4, v3

    goto :goto_426

    :cond_42e
    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_498

    sget-object v0, Lcom/a/a/d;->d:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, -0x1

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_47e

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_451
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "PREF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_467

    move v3, v4

    goto :goto_451

    :cond_467
    if-gez v2, :cond_5aa

    const-string v8, "HOME"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_473

    move v2, v4

    goto :goto_451

    :cond_473
    const-string v8, "WORK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5aa

    move v0, v7

    :goto_47c
    move v2, v0

    goto :goto_451

    :cond_47e
    move v0, v2

    if-gez v0, :cond_5a7

    :goto_481
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/util/List;

    if-nez v0, :cond_48c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/util/List;

    :cond_48c
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/util/List;

    new-instance v2, Lcom/a/a/l;

    invoke-direct {v2, v5, v1, v4, v3}, Lcom/a/a/l;-><init>(ILjava/lang/String;IZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_498
    const-string v0, "NOTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b7

    iget-object v0, p0, Lcom/a/a/d;->m:Ljava/util/List;

    if-nez v0, :cond_4ab

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d;->m:Ljava/util/List;

    :cond_4ab
    iget-object v0, p0, Lcom/a/a/d;->m:Ljava/util/List;

    new-instance v2, Lcom/a/a/o;

    invoke-direct {v2, v1}, Lcom/a/a/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_4b7
    const-string v0, "URL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d6

    iget-object v0, p0, Lcom/a/a/d;->j:Ljava/util/List;

    if-nez v0, :cond_4ca

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d;->j:Ljava/util/List;

    :cond_4ca
    iget-object v0, p0, Lcom/a/a/d;->j:Ljava/util/List;

    new-instance v2, Lcom/a/a/v;

    invoke-direct {v2, v1}, Lcom/a/a/v;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_4d6
    const-string v0, "BDAY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e7

    new-instance v0, Lcom/a/a/g;

    invoke-direct {v0, v1}, Lcom/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/d;->o:Lcom/a/a/g;

    goto/16 :goto_17

    :cond_4e7
    const-string v0, "ANNIVERSARY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f8

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0, v1}, Lcom/a/a/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/d;->p:Lcom/a/a/f;

    goto/16 :goto_17

    :cond_4f8
    const-string v0, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_506

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput-object v1, v0, Lcom/a/a/m;->h:Ljava/lang/String;

    goto/16 :goto_17

    :cond_506
    const-string v0, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_514

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput-object v1, v0, Lcom/a/a/m;->i:Ljava/lang/String;

    goto/16 :goto_17

    :cond_514
    const-string v0, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_522

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iput-object v1, v0, Lcom/a/a/m;->g:Ljava/lang/String;

    goto/16 :goto_17

    :cond_522
    const-string v0, "IMPP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53f

    const-string v0, "sip:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v1, v0}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_17

    :cond_53f
    const-string v0, "X-SIP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v1, v0}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_17

    :cond_55a
    const-string v0, "X-ANDROID-CUSTOM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/a/a/d;->q:I

    invoke-static {v1, v0}, Lcom/a/a/ag;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/a/a/d;->n:Ljava/util/List;

    if-nez v0, :cond_573

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->n:Ljava/util/List;

    :cond_573
    iget-object v6, p0, Lcom/a/a/d;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_58b

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_581
    new-instance v1, Lcom/a/a/e;

    invoke-direct {v1, v0, v2}, Lcom/a/a/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_58b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5a3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_598
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_581

    :cond_5a3
    const/16 v0, 0x10

    move v1, v0

    goto :goto_598

    :cond_5a7
    move v4, v0

    goto/16 :goto_481

    :cond_5aa
    move v0, v2

    goto/16 :goto_47c

    :cond_5ad
    move-object v0, v1

    goto/16 :goto_380

    :cond_5b0
    move-object v0, v2

    move v2, v5

    goto/16 :goto_2d3

    :cond_5b4
    move v6, v3

    move v0, v5

    goto/16 :goto_2d7

    :cond_5b8
    move v4, v0

    goto/16 :goto_25c

    :cond_5bb
    move-object v0, v5

    move v5, v6

    goto/16 :goto_256

    :cond_5bf
    move-object v5, v2

    move v0, v1

    move v1, v3

    goto/16 :goto_25a

    :cond_5c4
    move v0, v4

    goto/16 :goto_1de

    nop

    :pswitch_data_5c8
    .packed-switch 0x2
        :pswitch_159
        :pswitch_14f
        :pswitch_145
        :pswitch_13a
    .end packed-switch

    :pswitch_data_5d4
    .packed-switch 0x2
        :pswitch_12f
        :pswitch_125
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->k:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-virtual {p0}, Lcom/a/a/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/m;->k:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/a/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/u;-><init>(Lcom/a/a/d;B)V

    invoke-interface {v0}, Lcom/a/a/j;->a()V

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    sget-object v1, Lcom/a/a/k;->a:Lcom/a/a/k;

    invoke-interface {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/k;)V

    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-interface {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/i;)Z

    invoke-interface {v0}, Lcom/a/a/j;->c()V

    iget-object v1, p0, Lcom/a/a/d;->e:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->f:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->g:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->h:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->i:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->b:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->j:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->k:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->l:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->m:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->n:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/a/a/d;->a(Ljava/util/List;Lcom/a/a/j;)V

    iget-object v1, p0, Lcom/a/a/d;->o:Lcom/a/a/g;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/a/a/d;->o:Lcom/a/a/g;

    sget-object v1, Lcom/a/a/k;->l:Lcom/a/a/k;

    invoke-interface {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/k;)V

    iget-object v1, p0, Lcom/a/a/d;->o:Lcom/a/a/g;

    invoke-interface {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/i;)Z

    invoke-interface {v0}, Lcom/a/a/j;->c()V

    :cond_62
    iget-object v1, p0, Lcom/a/a/d;->p:Lcom/a/a/f;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/a/a/d;->p:Lcom/a/a/f;

    sget-object v1, Lcom/a/a/k;->m:Lcom/a/a/k;

    invoke-interface {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/k;)V

    iget-object v1, p0, Lcom/a/a/d;->p:Lcom/a/a/f;

    invoke-interface {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/i;)Z

    invoke-interface {v0}, Lcom/a/a/j;->c()V

    :cond_75
    invoke-interface {v0}, Lcom/a/a/j;->b()V

    invoke-virtual {v0}, Lcom/a/a/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
