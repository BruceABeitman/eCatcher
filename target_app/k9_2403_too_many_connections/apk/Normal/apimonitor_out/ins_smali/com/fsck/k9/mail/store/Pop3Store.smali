.class public Lcom/fsck/k9/mail/store/Pop3Store;
.super Lcom/fsck/k9/mail/Store;
.source "Pop3Store.java"
.field public static final CONNECTION_SECURITY_NONE:I = 0x0
.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4
.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3
.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1
.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2
.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;
.field private mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
.field private mConnectionSecurity:I
.field private mFolders:Ljava/util/HashMap;
.field private mHost:Ljava/lang/String;
.field private mPassword:Ljava/lang/String;
.field private mPort:I
.field private mUsername:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Lcom/fsck/k9/mail/Flag;
const/4 v1, 0x0
sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 12
const/16 v9, 0x3e3
const/4 v8, 0x2
const/4 v7, 0x0
const/16 v5, 0x6e
const/4 v6, 0x1
invoke-direct {p0}, Lcom/fsck/k9/mail/Store;-><init>()V
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
iput-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;
:try_start_11
new-instance v1, Ljava/net/URI;
invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
:try_end_16
.catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_16} :catch_55
invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v0
const-string v4, "pop3"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5f
iput v7, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
:goto_26
invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_39
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v4
iput v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
:cond_39
invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_54
invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v4
const-string v5, ":"
invoke-virtual {v4, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v3
aget-object v4, v3, v7
iput-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mUsername:Ljava/lang/String;
array-length v4, v3
if-le v4, v6, :cond_54
aget-object v4, v3, v6
iput-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
:cond_54
return-void
:catch_55
move-exception v4
move-object v2, v4
new-instance v4, Lcom/fsck/k9/mail/MessagingException;
const-string v5, "Invalid Pop3Store URI"
invoke-direct {v4, v5, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v4
:cond_5f
const-string v4, "pop3+tls"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6c
iput v6, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
goto :goto_26
:cond_6c
const-string v4, "pop3+tls+"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_79
iput v8, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
goto :goto_26
:cond_79
const-string v4, "pop3+ssl+"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_87
const/4 v4, 0x3
iput v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
iput v9, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
goto :goto_26
:cond_87
const-string v4, "pop3+ssl"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_95
const/4 v4, 0x4
iput v4, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
iput v9, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
goto :goto_26
:cond_95
new-instance v4, Lcom/fsck/k9/mail/MessagingException;
const-string v5, "Unsupported protocol"
invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v4
.end method
.method static synthetic access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$200(Lcom/fsck/k9/mail/store/Pop3Store;)I
.registers 2
iget v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
return v0
.end method
.method static synthetic access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I
.registers 2
iget v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
return v0
.end method
.method static synthetic access$400(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
return-object v0
.end method
.method static synthetic access$402(Lcom/fsck/k9/mail/store/Pop3Store;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
return-object p1
.end method
.method static synthetic access$500(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mUsername:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$600(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$700()[Lcom/fsck/k9/mail/Flag;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;
return-object v0
.end method
.method public checkSettings()V
.registers 3
new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
const-string v1, "INBOX"
invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;)V
sget-object v1, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
iget-boolean v1, v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z
if-nez v1, :cond_17
const-string v1, "UIDL"
#calls: Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->access$000(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;Ljava/lang/String;)Ljava/lang/String;
:cond_17
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->close()V
return-void
.end method
.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
.registers 5
iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/Folder;
if-nez v0, :cond_18
new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_18
return-object v0
.end method
.method public getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Lcom/fsck/k9/mail/Folder;
const/4 v1, 0x0
const-string v2, "INBOX"
invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method