.class public Ljavax/mail/Provider$Type;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final STORE:Ljavax/mail/Provider$Type;
.field public static final TRANSPORT:Ljavax/mail/Provider$Type;
.field private type:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljavax/mail/Provider$Type;
const-string v1, "STORE"
invoke-direct {v0, v1}, Ljavax/mail/Provider$Type;-><init>(Ljava/lang/String;)V
sput-object v0, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;
new-instance v0, Ljavax/mail/Provider$Type;
const-string v1, "TRANSPORT"
invoke-direct {v0, v1}, Ljavax/mail/Provider$Type;-><init>(Ljava/lang/String;)V
sput-object v0, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ljavax/mail/Provider$Type;->type:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/Provider$Type;->type:Ljava/lang/String;
return-object v0
.end method