.class public Lcom/glympse/android/lib/PersonLocal;
.super Lcom/glympse/android/lib/go;
.source "PersonLocal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/go;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/glympse/android/lib/go;-><init>()V

    iput-wide p1, p0, Lcom/glympse/android/lib/PersonLocal;->qQ:J

    iput-object p3, p0, Lcom/glympse/android/lib/PersonLocal;->qR:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qR:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/lib/go;->getNormalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qS:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/PersonLocal;->qT:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qT:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/lib/go;->getNormalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qU:Ljava/lang/String;

    iput-object p5, p0, Lcom/glympse/android/lib/PersonLocal;->_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/lib/go;->getNormalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qV:Ljava/lang/String;

    iput-object p6, p0, Lcom/glympse/android/lib/PersonLocal;->qW:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qW:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/lib/go;->getNormalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/PersonLocal;->qX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/glympse/android/api/GImage;)V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/go;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/PersonLocal;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/glympse/android/lib/PersonLocal;->mj:Lcom/glympse/android/api/GImage;

    return-void
.end method

.method public static createPerson(Lcom/glympse/android/lib/GPerson;)Lcom/glympse/android/lib/PersonLocal;
    .registers 4

    new-instance v0, Lcom/glympse/android/lib/PersonLocal;

    invoke-direct {v0}, Lcom/glympse/android/lib/PersonLocal;-><init>()V

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/glympse/android/lib/PersonLocal;->qQ:J

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qR:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qS:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getLastName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qT:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qU:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->_name:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qV:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getCompany()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qW:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getNormalizedCompany()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->qX:Ljava/lang/String;

    invoke-interface {p0}, Lcom/glympse/android/lib/GPerson;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/PersonLocal;->mj:Lcom/glympse/android/api/GImage;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addContact(Lcom/glympse/android/lib/GContact;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/glympse/android/lib/go;->addContact(Lcom/glympse/android/lib/GContact;)V

    return-void
.end method

.method public bridge synthetic getAvatar()Lcom/glympse/android/api/GImage;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCompany()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getCompany()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContacts()Lcom/glympse/android/core/GArray;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getContacts()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLastName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNormalizedCompany()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getNormalizedCompany()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNormalizedFirstName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getNormalizedFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNormalizedLastName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getNormalizedLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNormalizedName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getNormalizedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpan()I
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/go;->getSpan()I

    move-result v0

    return v0
.end method

.method public bridge synthetic prepareAvatar()V
    .registers 1

    invoke-super {p0}, Lcom/glympse/android/lib/go;->prepareAvatar()V

    return-void
.end method

.method public bridge synthetic sortContacts()V
    .registers 1

    invoke-super {p0}, Lcom/glympse/android/lib/go;->sortContacts()V

    return-void
.end method
