.class public final Lcom/google/android/gms/internal/ih;
.super Lcom/google/android/gms/internal/ga;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/a/b/a;
.field public static final CREATOR:Lcom/google/android/gms/internal/jz;
.field private static final a:Ljava/util/HashMap;
.field private A:Z
.field private final b:Ljava/util/Set;
.field private final c:I
.field private d:Ljava/lang/String;
.field private e:Lcom/google/android/gms/internal/ih$a;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:I
.field private i:Lcom/google/android/gms/internal/ih$b;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:I
.field private m:Ljava/lang/String;
.field private n:Lcom/google/android/gms/internal/ih$c;
.field private o:Z
.field private p:Ljava/lang/String;
.field private q:Lcom/google/android/gms/internal/ih$d;
.field private r:Ljava/lang/String;
.field private s:I
.field private t:Ljava/util/List;
.field private u:Ljava/util/List;
.field private v:I
.field private w:I
.field private x:Ljava/lang/String;
.field private y:Ljava/lang/String;
.field private z:Ljava/util/List;
.method static constructor <clinit>()V
.registers 11
const/4 v10, 0x4
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v0, Lcom/google/android/gms/internal/jz;
invoke-direct {v0}, Lcom/google/android/gms/internal/jz;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ih;->CREATOR:Lcom/google/android/gms/internal/jz;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "aboutMe"
const-string v2, "aboutMe"
invoke-static {v2, v8}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "ageRange"
const-string v2, "ageRange"
const-class v3, Lcom/google/android/gms/internal/ih$a;
invoke-static {v2, v9, v3}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "birthday"
const-string v2, "birthday"
invoke-static {v2, v10}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "braggingRights"
const-string v2, "braggingRights"
const/4 v3, 0x5
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "circledByCount"
const-string v2, "circledByCount"
const/4 v3, 0x6
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "cover"
const-string v2, "cover"
const/4 v3, 0x7
const-class v4, Lcom/google/android/gms/internal/ih$b;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "currentLocation"
const-string v2, "currentLocation"
const/16 v3, 0x8
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "displayName"
const-string v2, "displayName"
const/16 v3, 0x9
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "gender"
const-string v2, "gender"
const/16 v3, 0xc
new-instance v4, Lcom/google/android/gms/internal/fx;
invoke-direct {v4}, Lcom/google/android/gms/internal/fx;-><init>()V
const-string v5, "male"
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "female"
invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "other"
invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "id"
const-string v2, "id"
const/16 v3, 0xe
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "image"
const-string v2, "image"
const/16 v3, 0xf
const-class v4, Lcom/google/android/gms/internal/ih$c;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "isPlusUser"
const-string v2, "isPlusUser"
const/16 v3, 0x10
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "language"
const-string v2, "language"
const/16 v3, 0x12
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "name"
const-string v2, "name"
const/16 v3, 0x13
const-class v4, Lcom/google/android/gms/internal/ih$d;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "nickname"
const-string v2, "nickname"
const/16 v3, 0x14
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "objectType"
const-string v2, "objectType"
const/16 v3, 0x15
new-instance v4, Lcom/google/android/gms/internal/fx;
invoke-direct {v4}, Lcom/google/android/gms/internal/fx;-><init>()V
const-string v5, "person"
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "page"
invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "organizations"
const-string v2, "organizations"
const/16 v3, 0x16
const-class v4, Lcom/google/android/gms/internal/ih$f;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "placesLived"
const-string v2, "placesLived"
const/16 v3, 0x17
const-class v4, Lcom/google/android/gms/internal/ih$g;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "plusOneCount"
const-string v2, "plusOneCount"
const/16 v3, 0x18
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "relationshipStatus"
const-string v2, "relationshipStatus"
const/16 v3, 0x19
new-instance v4, Lcom/google/android/gms/internal/fx;
invoke-direct {v4}, Lcom/google/android/gms/internal/fx;-><init>()V
const-string v5, "single"
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "in_a_relationship"
invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "engaged"
invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "married"
invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "its_complicated"
invoke-virtual {v4, v5, v10}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "open_relationship"
const/4 v6, 0x5
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "widowed"
const/4 v6, 0x6
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "in_domestic_partnership"
const/4 v6, 0x7
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
const-string v5, "in_civil_union"
const/16 v6, 0x8
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fx;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "tagline"
const-string v2, "tagline"
const/16 v3, 0x1a
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "url"
const-string v2, "url"
const/16 v3, 0x1b
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "urls"
const-string v2, "urls"
const/16 v3, 0x1c
const-class v4, Lcom/google/android/gms/internal/ih$h;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ga$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
const-string v1, "verified"
const-string v2, "verified"
const/16 v3, 0x1d
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/internal/ih;->c:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->b:Ljava/util/Set;
return-void
.end method
.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/ih$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ih$b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ih$c;ZLjava/lang/String;Lcom/google/android/gms/internal/ih$d;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
.registers 28
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ih;->b:Ljava/util/Set;
iput p2, p0, Lcom/google/android/gms/internal/ih;->c:I
iput-object p3, p0, Lcom/google/android/gms/internal/ih;->d:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/ih;->e:Lcom/google/android/gms/internal/ih$a;
iput-object p5, p0, Lcom/google/android/gms/internal/ih;->f:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/internal/ih;->g:Ljava/lang/String;
iput p7, p0, Lcom/google/android/gms/internal/ih;->h:I
iput-object p8, p0, Lcom/google/android/gms/internal/ih;->i:Lcom/google/android/gms/internal/ih$b;
iput-object p9, p0, Lcom/google/android/gms/internal/ih;->j:Ljava/lang/String;
iput-object p10, p0, Lcom/google/android/gms/internal/ih;->k:Ljava/lang/String;
iput p11, p0, Lcom/google/android/gms/internal/ih;->l:I
iput-object p12, p0, Lcom/google/android/gms/internal/ih;->m:Ljava/lang/String;
iput-object p13, p0, Lcom/google/android/gms/internal/ih;->n:Lcom/google/android/gms/internal/ih$c;
iput-boolean p14, p0, Lcom/google/android/gms/internal/ih;->o:Z
move-object/from16 v0, p15
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->p:Ljava/lang/String;
move-object/from16 v0, p16
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->q:Lcom/google/android/gms/internal/ih$d;
move-object/from16 v0, p17
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->r:Ljava/lang/String;
move/from16 v0, p18
iput v0, p0, Lcom/google/android/gms/internal/ih;->s:I
move-object/from16 v0, p19
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->t:Ljava/util/List;
move-object/from16 v0, p20
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->u:Ljava/util/List;
move/from16 v0, p21
iput v0, p0, Lcom/google/android/gms/internal/ih;->v:I
move/from16 v0, p22
iput v0, p0, Lcom/google/android/gms/internal/ih;->w:I
move-object/from16 v0, p23
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->x:Ljava/lang/String;
move-object/from16 v0, p24
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->y:Ljava/lang/String;
move-object/from16 v0, p25
iput-object v0, p0, Lcom/google/android/gms/internal/ih;->z:Ljava/util/List;
move/from16 v0, p26
iput-boolean v0, p0, Lcom/google/android/gms/internal/ih;->A:Z
return-void
.end method
.method public static a([B)Lcom/google/android/gms/internal/ih;
.registers 4
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
array-length v1, p0
invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V
invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V
sget-object v1, Lcom/google/android/gms/internal/ih;->CREATOR:Lcom/google/android/gms/internal/jz;
invoke-static {v0}, Lcom/google/android/gms/internal/jz;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ih;
move-result-object v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v1
.end method
.method public final A()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->x:Ljava/lang/String;
return-object v0
.end method
.method public final B()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->y:Ljava/lang/String;
return-object v0
.end method
.method final C()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->z:Ljava/util/List;
return-object v0
.end method
.method public final D()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ih;->A:Z
return v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method protected final a(Lcom/google/android/gms/internal/ga$a;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->b:Ljava/util/Set;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v0
packed-switch v0, :pswitch_data_84
:pswitch_7
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown safe parcelable id="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_20
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->d:Ljava/lang/String;
:goto_22
return-object v0
:pswitch_23
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->e:Lcom/google/android/gms/internal/ih$a;
goto :goto_22
:pswitch_26
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->f:Ljava/lang/String;
goto :goto_22
:pswitch_29
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->g:Ljava/lang/String;
goto :goto_22
:pswitch_2c
iget v0, p0, Lcom/google/android/gms/internal/ih;->h:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
:pswitch_33
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->i:Lcom/google/android/gms/internal/ih$b;
goto :goto_22
:pswitch_36
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->j:Ljava/lang/String;
goto :goto_22
:pswitch_39
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->k:Ljava/lang/String;
goto :goto_22
:pswitch_3c
iget v0, p0, Lcom/google/android/gms/internal/ih;->l:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
:pswitch_43
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->m:Ljava/lang/String;
goto :goto_22
:pswitch_46
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->n:Lcom/google/android/gms/internal/ih$c;
goto :goto_22
:pswitch_49
iget-boolean v0, p0, Lcom/google/android/gms/internal/ih;->o:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_22
:pswitch_50
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->p:Ljava/lang/String;
goto :goto_22
:pswitch_53
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->q:Lcom/google/android/gms/internal/ih$d;
goto :goto_22
:pswitch_56
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->r:Ljava/lang/String;
goto :goto_22
:pswitch_59
iget v0, p0, Lcom/google/android/gms/internal/ih;->s:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
:pswitch_60
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->t:Ljava/util/List;
goto :goto_22
:pswitch_63
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->u:Ljava/util/List;
goto :goto_22
:pswitch_66
iget v0, p0, Lcom/google/android/gms/internal/ih;->v:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
:pswitch_6d
iget v0, p0, Lcom/google/android/gms/internal/ih;->w:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
:pswitch_74
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->x:Ljava/lang/String;
goto :goto_22
:pswitch_77
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->y:Ljava/lang/String;
goto :goto_22
:pswitch_7a
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->z:Ljava/util/List;
goto :goto_22
:pswitch_7d
iget-boolean v0, p0, Lcom/google/android/gms/internal/ih;->A:Z
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
.method public final b()Ljava/util/HashMap;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
return-object v0
.end method
.method protected final c()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected final d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ih;->CREATOR:Lcom/google/android/gms/internal/jz;
const/4 v0, 0x0
return v0
.end method
.method final e()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->b:Ljava/util/Set;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/ih;
if-nez v0, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v2
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/internal/ih;
sget-object v0, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
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
check-cast v0, Lcom/google/android/gms/internal/ga$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v4
if-eqz v4, :cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v4
if-eqz v4, :cond_40
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ih;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
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
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v0
if-eqz v0, :cond_18
move v0, v1
goto :goto_7
:cond_4a
move v0, v2
goto :goto_7
.end method
.method final f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih;->c:I
return v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->d:Ljava/lang/String;
return-object v0
.end method
.method final h()Lcom/google/android/gms/internal/ih$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->e:Lcom/google/android/gms/internal/ih$a;
return-object v0
.end method
.method public final hashCode()I
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/google/android/gms/internal/ih;->a:Ljava/util/HashMap;
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
check-cast v0, Lcom/google/android/gms/internal/ga$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {v0}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v3
add-int/2addr v1, v3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
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
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->f:Ljava/lang/String;
return-object v0
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->g:Ljava/lang/String;
return-object v0
.end method
.method public final k()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih;->h:I
return v0
.end method
.method final l()Lcom/google/android/gms/internal/ih$b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->i:Lcom/google/android/gms/internal/ih$b;
return-object v0
.end method
.method public final m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->j:Ljava/lang/String;
return-object v0
.end method
.method public final n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->k:Ljava/lang/String;
return-object v0
.end method
.method public final o()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih;->l:I
return v0
.end method
.method public final p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->m:Ljava/lang/String;
return-object v0
.end method
.method final q()Lcom/google/android/gms/internal/ih$c;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->n:Lcom/google/android/gms/internal/ih$c;
return-object v0
.end method
.method public final r()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ih;->o:Z
return v0
.end method
.method public final s()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->p:Ljava/lang/String;
return-object v0
.end method
.method final t()Lcom/google/android/gms/internal/ih$d;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->q:Lcom/google/android/gms/internal/ih$d;
return-object v0
.end method
.method public final u()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->r:Ljava/lang/String;
return-object v0
.end method
.method public final v()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih;->s:I
return v0
.end method
.method final w()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->t:Ljava/util/List;
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ih;->CREATOR:Lcom/google/android/gms/internal/jz;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/ih;Landroid/os/Parcel;I)V
return-void
.end method
.method final x()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih;->u:Ljava/util/List;
return-object v0
.end method
.method public final y()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih;->v:I
return v0
.end method
.method public final z()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih;->w:I
return v0
.end method