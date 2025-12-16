import { prisma } from "@/lib/prisma";

export async function GET() {
  return Response.json({
    status: "ok",
    message: "API is running"
  });
}
