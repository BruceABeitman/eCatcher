.class public final Lcom/google/android/gms/plus/d;
.super Ljava/lang/Object;
.field public static final a:Lcom/google/android/gms/common/api/h;
.field static final b:Lcom/google/android/gms/common/api/g;
.field public static final c:Lcom/google/android/gms/common/api/a;
.field public static final d:Lcom/google/android/gms/common/api/q;
.field public static final e:Lcom/google/android/gms/common/api/q;
.field public static final f:Lcom/google/android/gms/plus/b;
.field public static final g:Lcom/google/android/gms/plus/c;
.field public static final h:Lcom/google/android/gms/plus/a;
.field public static final i:Lcom/google/android/gms/plus/o;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/h;
invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/h;
new-instance v0, Lcom/google/android/gms/plus/d$1;
invoke-direct {v0}, Lcom/google/android/gms/plus/d$1;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/d;->b:Lcom/google/android/gms/common/api/g;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/plus/d;->b:Lcom/google/android/gms/common/api/g;
sget-object v2, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/h;
const/4 v3, 0x0
new-array v3, v3, [Lcom/google/android/gms/common/api/q;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/q;)V
sput-object v0, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;
new-instance v0, Lcom/google/android/gms/common/api/q;
const-string v1, "https://www.googleapis.com/auth/plus.login"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/q;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/plus/d;->d:Lcom/google/android/gms/common/api/q;
new-instance v0, Lcom/google/android/gms/common/api/q;
const-string v1, "https://www.googleapis.com/auth/plus.me"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/q;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/plus/d;->e:Lcom/google/android/gms/common/api/q;
new-instance v0, Lcom/google/android/gms/internal/jr;
invoke-direct {v0}, Lcom/google/android/gms/internal/jr;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/d;->f:Lcom/google/android/gms/plus/b;
new-instance v0, Lcom/google/android/gms/internal/jt;
invoke-direct {v0}, Lcom/google/android/gms/internal/jt;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/d;->g:Lcom/google/android/gms/plus/c;
new-instance v0, Lcom/google/android/gms/internal/jj;
invoke-direct {v0}, Lcom/google/android/gms/internal/jj;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;
new-instance v0, Lcom/google/android/gms/internal/jn;
invoke-direct {v0}, Lcom/google/android/gms/internal/jn;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/d;->i:Lcom/google/android/gms/plus/o;
return-void
.end method