-- CreateTable
CREATE TABLE "procedures" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT,
    "category" INTEGER NOT NULL,
    "nationwide" BOOLEAN DEFAULT false,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "procedures_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "procedure_steps" (
    "id" SERIAL NOT NULL,
    "procedure_id" INTEGER NOT NULL,
    "step_order" INTEGER NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "description" TEXT,
    "authority_id" INTEGER NOT NULL,

    CONSTRAINT "procedure_steps_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "documents" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT,

    CONSTRAINT "documents_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "procedure_documents" (
    "procedure_id" INTEGER NOT NULL,
    "document_id" INTEGER NOT NULL,
    "required" BOOLEAN DEFAULT true,
    "prepared_by" INTEGER NOT NULL,

    CONSTRAINT "procedure_documents_pkey" PRIMARY KEY ("procedure_id","document_id")
);

-- CreateTable
CREATE TABLE "authorities" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "level" INTEGER NOT NULL,
    "location_id" INTEGER NOT NULL,

    CONSTRAINT "authorities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "locations" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "level" INTEGER NOT NULL,
    "parent_id" INTEGER,

    CONSTRAINT "locations_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "uq_procedure_step" ON "procedure_steps"("procedure_id", "step_order");
