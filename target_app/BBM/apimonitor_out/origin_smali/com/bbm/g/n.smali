.class final enum Lcom/bbm/g/n;
.super Ljava/lang/Enum;
.source "GroupCalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/g/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/g/n;

.field public static final enum b:Lcom/bbm/g/n;

.field public static final enum c:Lcom/bbm/g/n;

.field public static final enum d:Lcom/bbm/g/n;

.field public static final enum e:Lcom/bbm/g/n;

.field public static final enum f:Lcom/bbm/g/n;

.field public static final enum g:Lcom/bbm/g/n;

.field private static final synthetic i:[Lcom/bbm/g/n;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "SUNDAY"

    invoke-direct {v0, v1, v7, v4}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->a:Lcom/bbm/g/n;

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "MONDAY"

    invoke-direct {v0, v1, v4, v5}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->b:Lcom/bbm/g/n;

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "TUESDAY"

    invoke-direct {v0, v1, v5, v6}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->c:Lcom/bbm/g/n;

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "WEDNESDAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->d:Lcom/bbm/g/n;

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "THURSDAY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->e:Lcom/bbm/g/n;

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "FRIDAY"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->f:Lcom/bbm/g/n;

    new-instance v0, Lcom/bbm/g/n;

    const-string v1, "SATURDAY"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/g/n;->g:Lcom/bbm/g/n;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bbm/g/n;

    sget-object v1, Lcom/bbm/g/n;->a:Lcom/bbm/g/n;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/g/n;->b:Lcom/bbm/g/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/g/n;->c:Lcom/bbm/g/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/g/n;->d:Lcom/bbm/g/n;

    aput-object v1, v0, v8

    sget-object v1, Lcom/bbm/g/n;->e:Lcom/bbm/g/n;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/g/n;->f:Lcom/bbm/g/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/g/n;->g:Lcom/bbm/g/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/g/n;->i:[Lcom/bbm/g/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bbm/g/n;->h:I

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bbm/g/n;->a:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    const-string v1, "SU,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    sget-object v1, Lcom/bbm/g/n;->b:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_1d

    const-string v1, "MO,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    sget-object v1, Lcom/bbm/g/n;->c:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_29

    const-string v1, "TU,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    sget-object v1, Lcom/bbm/g/n;->d:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_35

    const-string v1, "WE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    sget-object v1, Lcom/bbm/g/n;->e:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_41

    const-string v1, "TH,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    sget-object v1, Lcom/bbm/g/n;->f:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_4d

    const-string v1, "FR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    sget-object v1, Lcom/bbm/g/n;->g:Lcom/bbm/g/n;

    iget v1, v1, Lcom/bbm/g/n;->h:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_59

    const-string v1, "SA,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6a

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_69
    return-object v0

    :cond_6a
    const-string v0, ""

    goto :goto_69
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/n;
    .registers 2

    const-class v0, Lcom/bbm/g/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/n;

    return-object v0
.end method

.method public static values()[Lcom/bbm/g/n;
    .registers 1

    sget-object v0, Lcom/bbm/g/n;->i:[Lcom/bbm/g/n;

    invoke-virtual {v0}, [Lcom/bbm/g/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/g/n;

    return-object v0
.end method
