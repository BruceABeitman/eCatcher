.class public final Lcom/google/android/gms/internal/ir;
.super Lcom/google/android/gms/internal/fb;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/is;

.field private static final RL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/fb$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private FE:Ljava/lang/String;

.field private final RM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private SK:Ljava/lang/String;

.field private SL:Lcom/google/android/gms/internal/ir$a;

.field private SM:Ljava/lang/String;

.field private SN:Ljava/lang/String;

.field private SO:I

.field private SP:Lcom/google/android/gms/internal/ir$b;

.field private SQ:Ljava/lang/String;

.field private SR:Lcom/google/android/gms/internal/ir$c;

.field private SS:Z

.field private ST:Ljava/lang/String;

.field private SU:Lcom/google/android/gms/internal/ir$d;

.field private SV:Ljava/lang/String;

.field private SW:I

.field private SX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$f;",
            ">;"
        }
    .end annotation
.end field

.field private SY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$g;",
            ">;"
        }
    .end annotation
.end field

.field private SZ:I

.field private Ta:I

.field private Tb:Ljava/lang/String;

.field private Tc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$h;",
            ">;"
        }
    .end annotation
.end field

.field private Td:Z

.field private lu:I

.field private pS:Ljava/lang/String;

.field private uS:Ljava/lang/String;

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/internal/is;

    invoke-direct {v0}, Lcom/google/android/gms/internal/is;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/is;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "aboutMe"

    const-string v2, "aboutMe"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const-class v3, Lcom/google/android/gms/internal/ir$a;

    invoke-static {v2, v9, v3}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "circledByCount"

    const-string v2, "circledByCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "cover"

    const-string v2, "cover"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/internal/ir$b;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "currentLocation"

    const-string v2, "currentLocation"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    const/16 v3, 0xc

    new-instance v4, Lcom/google/android/gms/internal/ey;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ey;-><init>()V

    const-string v5, "male"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "female"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/fb$b;Z)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/internal/ir$c;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "isPlusUser"

    const-string v2, "isPlusUser"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->i(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/internal/ir$d;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    const/16 v3, 0x15

    new-instance v4, Lcom/google/android/gms/internal/ey;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ey;-><init>()V

    const-string v5, "person"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "page"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/fb$b;Z)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const/16 v3, 0x16

    const-class v4, Lcom/google/android/gms/internal/ir$f;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const/16 v3, 0x17

    const-class v4, Lcom/google/android/gms/internal/ir$g;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "plusOneCount"

    const-string v2, "plusOneCount"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "relationshipStatus"

    const-string v2, "relationshipStatus"

    const/16 v3, 0x19

    new-instance v4, Lcom/google/android/gms/internal/ey;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ey;-><init>()V

    const-string v5, "single"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "in_a_relationship"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "engaged"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "married"

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "its_complicated"

    invoke-virtual {v4, v5, v10}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "open_relationship"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "widowed"

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "in_domestic_partnership"

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    const-string v5, "in_civil_union"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/fb$b;Z)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "tagline"

    const-string v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const/16 v3, 0x1c

    const-class v4, Lcom/google/android/gms/internal/ir$h;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->i(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ir;->wj:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ir$c;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ir;->wj:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ir;->FE:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ir;->uS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ir;->SR:Lcom/google/android/gms/internal/ir$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput p4, p0, Lcom/google/android/gms/internal/ir;->SW:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ir;->pS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/ir$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ir$b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ir$c;ZLjava/lang/String;Lcom/google/android/gms/internal/ir$d;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ir$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ir$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ir$c;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ir$d;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$g;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$h;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/ir;->wj:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ir;->SK:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ir;->SL:Lcom/google/android/gms/internal/ir$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/ir;->SM:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ir;->SN:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/ir;->SO:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ir;->SP:Lcom/google/android/gms/internal/ir$b;

    iput-object p9, p0, Lcom/google/android/gms/internal/ir;->SQ:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ir;->FE:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/ir;->lu:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ir;->uS:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/internal/ir;->SR:Lcom/google/android/gms/internal/ir$c;

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ir;->SS:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->ST:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->SU:Lcom/google/android/gms/internal/ir$d;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->SV:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/internal/ir;->SW:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->SX:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->SY:Ljava/util/List;

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/gms/internal/ir;->SZ:I

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/internal/ir;->Ta:I

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->Tb:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->pS:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/ir;->Tc:Ljava/util/List;

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ir;->Td:Z

    return-void
.end method

.method public static i([B)Lcom/google/android/gms/internal/ir;
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/is;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/is;->aI(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/fb$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->eu()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final ak(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final al(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->eu()I

    move-result v0

    packed-switch v0, :pswitch_data_84

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->eu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SK:Ljava/lang/String;

    :goto_22
    return-object v0

    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SL:Lcom/google/android/gms/internal/ir$a;

    goto :goto_22

    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SM:Ljava/lang/String;

    goto :goto_22

    :pswitch_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SN:Ljava/lang/String;

    goto :goto_22

    :pswitch_2c
    iget v0, p0, Lcom/google/android/gms/internal/ir;->SO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SP:Lcom/google/android/gms/internal/ir$b;

    goto :goto_22

    :pswitch_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SQ:Ljava/lang/String;

    goto :goto_22

    :pswitch_39
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->FE:Ljava/lang/String;

    goto :goto_22

    :pswitch_3c
    iget v0, p0, Lcom/google/android/gms/internal/ir;->lu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22

    :pswitch_43
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->uS:Ljava/lang/String;

    goto :goto_22

    :pswitch_46
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SR:Lcom/google/android/gms/internal/ir$c;

    goto :goto_22

    :pswitch_49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ir;->SS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_22

    :pswitch_50
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->ST:Ljava/lang/String;

    goto :goto_22

    :pswitch_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SU:Lcom/google/android/gms/internal/ir$d;

    goto :goto_22

    :pswitch_56
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SV:Ljava/lang/String;

    goto :goto_22

    :pswitch_59
    iget v0, p0, Lcom/google/android/gms/internal/ir;->SW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22

    :pswitch_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SX:Ljava/util/List;

    goto :goto_22

    :pswitch_63
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SY:Ljava/util/List;

    goto :goto_22

    :pswitch_66
    iget v0, p0, Lcom/google/android/gms/internal/ir;->SZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22

    :pswitch_6d
    iget v0, p0, Lcom/google/android/gms/internal/ir;->Ta:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22

    :pswitch_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->Tb:Ljava/lang/String;

    goto :goto_22

    :pswitch_77
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->pS:Ljava/lang/String;

    goto :goto_22

    :pswitch_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->Tc:Ljava/util/List;

    goto :goto_22

    :pswitch_7d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ir;->Td:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_22

    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_7
        :pswitch_7
        :pswitch_3c
        :pswitch_7
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_7
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_60
        :pswitch_63
        :pswitch_66
        :pswitch_6d
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_7d
    .end packed-switch
.end method

.method public final describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/is;

    const/4 v0, 0x0

    return v0
.end method

.method public final en()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/fb$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ir;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    if-ne p0, p1, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/ir;

    sget-object v0, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fb$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_40
    move v0, v1

    goto :goto_7

    :cond_42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_4a
    move v0, v2

    goto :goto_7
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir;->id()Lcom/google/android/gms/internal/ir;

    move-result-object v0

    return-object v0
.end method

.method public final getAboutMe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SK:Ljava/lang/String;

    return-object v0
.end method

.method public final getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SL:Lcom/google/android/gms/internal/ir$a;

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SM:Ljava/lang/String;

    return-object v0
.end method

.method public final getBraggingRights()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SN:Ljava/lang/String;

    return-object v0
.end method

.method public final getCircledByCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir;->SO:I

    return v0
.end method

.method public final getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SP:Lcom/google/android/gms/internal/ir$b;

    return-object v0
.end method

.method public final getCurrentLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SQ:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->FE:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir;->lu:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->uS:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SR:Lcom/google/android/gms/internal/ir$c;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->ST:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SU:Lcom/google/android/gms/internal/ir$d;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SV:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir;->SW:I

    return v0
.end method

.method public final getOrganizations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SX:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlacesLived()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SY:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlusOneCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir;->SZ:I

    return v0
.end method

.method public final getRelationshipStatus()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir;->Ta:I

    return v0
.end method

.method public final getTagline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->Tb:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->pS:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->Tc:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ir;->wj:I

    return v0
.end method

.method final hB()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    return-object v0
.end method

.method final hW()Lcom/google/android/gms/internal/ir$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SL:Lcom/google/android/gms/internal/ir$a;

    return-object v0
.end method

.method final hX()Lcom/google/android/gms/internal/ir$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SP:Lcom/google/android/gms/internal/ir$b;

    return-object v0
.end method

.method final hY()Lcom/google/android/gms/internal/ir$c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SR:Lcom/google/android/gms/internal/ir$c;

    return-object v0
.end method

.method final hZ()Lcom/google/android/gms/internal/ir$d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SU:Lcom/google/android/gms/internal/ir$d;

    return-object v0
.end method

.method public final hasAboutMe()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasAgeRange()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasBirthday()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasBraggingRights()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasCircledByCount()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasCover()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasCurrentLocation()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasDisplayName()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasGender()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasId()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasImage()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasIsPlusUser()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasLanguage()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasName()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasNickname()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasObjectType()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasOrganizations()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasPlacesLived()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasPlusOneCount()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasRelationshipStatus()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasTagline()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasUrls()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasVerified()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->RM:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/ir;->RL:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fb$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir;->a(Lcom/google/android/gms/internal/fb$a;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->eu()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2c
    move v1, v0

    goto :goto_c

    :cond_2e
    return v1

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method

.method final ia()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SX:Ljava/util/List;

    return-object v0
.end method

.method final ib()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->SY:Ljava/util/List;

    return-object v0
.end method

.method final ic()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ir$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ir;->Tc:Ljava/util/List;

    return-object v0
.end method

.method public final id()Lcom/google/android/gms/internal/ir;
    .registers 1

    return-object p0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isPlusUser()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ir;->SS:Z

    return v0
.end method

.method public final isVerified()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ir;->Td:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/is;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/is;->a(Lcom/google/android/gms/internal/ir;Landroid/os/Parcel;I)V

    return-void
.end method
